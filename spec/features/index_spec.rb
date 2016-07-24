require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'Welcomes guests' do
    within '.welcome' do
      expect(page).to have_selector 'h1'
      within 'h1' do
        expect(page).to have_content 'Welcome to my page!'
      end
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

  it 'Redirects to About Me page on click in header' do
    expect(page).to have_selector 'header'
    within 'header' do
      click_link 'About Me'
    end
    expect(page.current_path).to eq '/about_me.html'
  end

  it 'Redirects to About Me page on click in footer' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      click_link 'About Me'
    end
    expect(page.current_path).to eq '/about_me.html'
  end

end
