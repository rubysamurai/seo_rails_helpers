module SeoRailsHelpers
  module SeoMetaDescriptionHelper
    # Produces html meta element to specify description
    def seo_meta_description(options = {})
      meta_description = content_for(options[:description] || :description)

      if meta_description.present?
        tag(:meta, name: 'description', content: meta_description)
      end
    end
  end
end
