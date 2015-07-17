require 'rails_helper'

RSpec.describe SeoRailsHelpers::SeoMetaDescriptionHelper, type: :helper do
  describe '#seo_meta_description' do
    it 'returns nil for empty description option' do
      allow(helper).to receive(:content_for).with(:description).and_return('')
      expect(helper.seo_meta_description).to be_nil
    end

    it 'returns meta description for default description option' do
      allow(helper).to receive(:content_for).with(:description)
        .and_return('Meta description')
      expect(helper.seo_meta_description).to include 'content="Meta description'
    end

    it 'returns meta description for custom description option' do
      allow(helper).to receive(:content_for).with(:meta_description)
        .and_return('Meta description')
      expect(helper.seo_meta_description(description: :meta_description))
        .to include 'content="Meta description'
    end
  end
end
