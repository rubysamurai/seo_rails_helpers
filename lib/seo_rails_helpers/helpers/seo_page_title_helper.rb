module SeoRailsHelpers
  module SeoPageTitleHelper
    # Produces html title element
    def seo_page_title(options = {})
      page_title = content_for(options[:page_title] || :title)
      separator  = options[:separator] || '|'
      base_title = options[:base_title] || default_base_title

      if page_title.present?
        content_tag(:title, page_title + ' ' + separator + ' ' + base_title)
      else
        content_tag(:title, base_title)
      end
    end

    private

      # Returns Rails application name as default base title
      def default_base_title
        Rails.application.class.to_s.split('::').first
      end
  end
end
