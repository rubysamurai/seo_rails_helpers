module SeoRailsHelpers
  class Railtie < Rails::Railtie
    initializer 'seo_page_title.helper' do
      ActiveSupport.on_load :action_view do
        include SeoRailsHelpers::SeoPageTitleHelper
      end
    end

    initializer 'seo_meta_description.helper' do
      ActiveSupport.on_load :action_view do
        include SeoRailsHelpers::SeoMetaDescriptionHelper
      end
    end
  end
end
