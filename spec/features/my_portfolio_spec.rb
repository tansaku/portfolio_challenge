require 'spec_helper'

describe 'my_portfolio', type: :feature do

  before do
    visit '/my_portfolio.html'
  end

  it 'Redirects to Home page on click in header' do
    expect(page).to have_selector 'header'
      within 'header' do
        click_link 'Home'
      end
    expect(page.current_path).to eq '/index.html'
  end

  it 'Redirects to Home page on click in footer' do
    expect(page).to have_selector 'footer'
      within 'footer' do
        click_link 'Home'
      end
    expect(page.current_path).to eq '/index.html'
  end

  it 'Displays projects list' do
    expect(page).to have_selector 'h3'
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
