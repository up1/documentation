module Jekyll
  class TagPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tags.html')
      self.data['tag'] = tag
    end
  end

  class TagPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'tags'
        dir = site.config['tags_dir'] || 'tags'
        site.tags.keys.each do |tag|
          site.pages << TagPage.new(site, site.source, File.join(dir, tag.downcase.gsub(' ', '-')), tag)
        end
      end
    end
  end

  class TagUrl < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @tag = text.strip
    end

    def render(context)
      site = context.registers[:site]
      tags_dir = site.config['tags_dir'] || 'tags'
      [ site.baseurl, tags_dir, @tag.downcase.gsub(' ', '-'), '' ].join('/')
    end
  end

  module TagFilters
    def tag_url(input)
      site = @context.registers[:site]
      tags_dir = site.config['tags_dir'] || 'tags'
      [ site.baseurl, tags_dir, input.downcase.gsub(' ', '-'), '' ].join('/')
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagFilters)
Liquid::Template.register_tag('tag_url', Jekyll::TagUrl)
