require 'spec_helper'

describe 'homepage' do
  it 'allows user to visit the homepage' do
    visit root_path
    expect(page).to have_content
  end
  it "allows user to see the 'Ask Me' text logo" do
    visit root_path
    expect(page).to have_content('Ask Me')
  end
  it 'contains enter link to enter the site' do
    visit root_path
    expect(page).to have_css('a')
  end
end