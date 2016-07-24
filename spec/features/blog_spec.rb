require 'spec_helper'

describe 'blog', type: :feature do

  before do
    visit '/blog.html'
  end

  it 'Displays articles list' do
    expect(page).to have_selector '.article'
  end

  it 'Renders header partial' do
   expect(page).to have_selector 'header'
   within 'header' do
     expect(page).to have_selector '.menu'
   end
  end

  it 'Renders footer partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'Copywrite Lucia De Mojà © 2016'
    end
  end

end
