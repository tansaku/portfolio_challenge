require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

# TO BE CHANGED INTO: INCLUDES A WELCOME MESSAGE
#   it 'Congratulates to Lucia with a h1 tag' do
#     expect(page).to have_selector 'h1'
#     within 'h1' do
#     expect(page).to have_content 'Good Job Lucia'
#     end
#   end
# TO BE CHANGED INTO: DISPLAYS BACKGROUND PICTURE
#   it 'Displays Middleman Logo' do
#     expect(page).to have_css 'img[src*="middleman-logo.svg"]'
#   end
# TO BE MOVED INTO MY_PORTFOLIO_SPEC.RB
#   it 'Displays projects list' do
#    expect(page).to have_css '.projects'
#    within '.projects' do
#      expect(page).to have_content 'My First Website'
#      expect(page).to have_content 'FizzBuzz'
#    end
#  end
# JUST CHECK THIS AND FIGURE OUT WHAT TO DO WITH IT
#  it 'Renders footer partial' do
#   expect(page).to have_selector 'footer'
#   within 'footer' do
#     expect(page).to have_content 'My Portfolio'
#     expect(page).to have_content 'Built using the awesome Middleman framework'
#   end
# end
#
#
# end
