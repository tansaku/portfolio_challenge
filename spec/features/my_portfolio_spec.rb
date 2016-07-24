require 'spec_helper'

describe 'my_portfolio', type: :feature do

  before do
    visit '/my_portfolio.html'
  end

  it 'Displays projects list' do
    expect(page).to have_selector 'h3'
  end
end
