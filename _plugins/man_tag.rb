module Jekyll
  class ManUrl < Liquid::Tag
    def initialize(tag_name, man_page, tokens)
      super
      @section = 1
      @man_page = man_page.strip
    end

    def render(context)
      ubuntu_version = context.registers[:site].config['ubuntu_version']
      "http://manpages.ubuntu.com/manpages/#{ubuntu_version}/en/man#{@section}/#{@man_page.downcase}.#{@section}.html"
    end
  end
end

Liquid::Template.register_tag('man_url', Jekyll::ManUrl)
