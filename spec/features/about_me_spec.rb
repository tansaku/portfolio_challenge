require 'spec_helper'

describe 'about_me', type: :feature do

  before do
    visit '/about_me.html'
  end

  it 'Displays the name of the page' do
    expect(page).to have_selector '.about'
      within '.about' do
        expect(page).to have_content "About me"
      end
   end
end
