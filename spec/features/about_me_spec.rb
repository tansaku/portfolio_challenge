require 'spec_helper'

describe 'about_me', type: :feature do

  before do
    visit '/about_me.html'
  end

  it 'Redirects to My Portfolio page on click in header' do
    expect(page).to have_selector 'header'
      within 'header' do
        click_link 'My Portfolio'
      end
    expect(page.current_path).to eq '/my_portfolio.html'
  end

  it 'Redirects to My Portfolio page on click in footer' do
    expect(page).to have_selector 'footer'
      within 'footer' do
        click_link 'My Portfolio'
      end
    expect(page.current_path).to eq '/my_portfolio.html'
  end

  it 'Displays the name of the page' do
    expect(page).to have_selector '.about'
      within '.about' do
        expect(page).to have_content "About me"
      end
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
