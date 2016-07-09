require 'spec_helper'

describe 'my_portfolio', type: :feature do

  before do
    visit '/my_portfolio.html'
  end

  it 'Displays projects list' do
   expect(page).to have_css '.projects'
   within '.projects' do
     expect(page).to have_content 'My First Website'
     expect(page).to have_content 'FizzBuzz'
   end
 end
