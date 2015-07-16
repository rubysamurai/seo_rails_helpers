require 'rails_helper'

RSpec.describe SeoRailsHelpers::SeoPageTitleHelper, type: :helper do
  describe '#seo_page_title' do
    it 'produces default title with default options' do
      allow(helper).to receive(:content_for).with(:title).and_return('Default')
      expect(helper.seo_page_title).to eq '<title>Default | SeoRailsHelpers</title>'
    end

    it 'produces custom title with page title option' do
      allow(helper).to receive(:content_for).with(:page_title).and_return('Example Page')
      expect(helper.seo_page_title(page_title: :page_title)).to eq '<title>Example Page | SeoRailsHelpers</title>'
    end

    it 'produces custom title with separator option' do
      allow(helper).to receive(:content_for).with(:page_title).and_return('Example Page')
      expect(helper.seo_page_title(page_title: :page_title, separator: '-')).to eq '<title>Example Page - SeoRailsHelpers</title>'
    end

    it 'produces custom title with base title option' do
      expect(helper.seo_page_title(base_title: 'Example App')).to eq '<title>Example App</title>'
    end
  end
end
