require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'Welcomes guests' do
    expect(.welcome).to have_content
    within 'h1' do
    expect(page).to have_content 'Good Job Lucia'
    end
  end

JUST CHECK THIS AND FIGURE OUT WHAT TO DO WITH IT
 it 'Renders footer partial' do
  expect(page).to have_selector 'footer'
  within 'footer' do
    expect(page).to have_content 'My Portfolio'
    expect(page).to have_content 'Built using the awesome Middleman framework'
  end
end


end
