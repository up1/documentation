module Jekyll
  module DataFilters
    # Sort a object from _data by a property
    #
    # input - the object, something from site.data
    # property - property within each object to filter by
    # nils ('first' | 'last') - prepend / append if the property is nil
    #
    # Returns the filtered array of objects
    def sort_by_data_value(input, property = nil, nils = "first")
      if property.nil?
        input.sort
      else
        case
        when nils == "first"
          order = - 1
        when nils == "last"
          order = + 1
        else
          raise ArgumentError.new("Invalid nils order: " +
            "'#{nils}' is not a valid nils order. It must be 'first' or 'last'.")
        end

        # sorts two properties according to their value
        input.sort { |apple, orange|
          apple_property = data_item_property(apple, property)
          orange_property = data_item_property(orange, property)

          if !apple_property.nil? && orange_property.nil?
            - order
          elsif apple_property.nil? && !orange_property.nil?
            + order
          else
            apple_property <=> orange_property
          end
        }
      end
    end

    private

    def data_item_property(item, property)
      if item.respond_to?(:to_liquid)
        item.to_liquid.last[property.to_s]
      elsif item.respond_to?(:data)
        item.data.last[property.to_s]
      else
        item.last[property.to_s]
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::DataFilters)
