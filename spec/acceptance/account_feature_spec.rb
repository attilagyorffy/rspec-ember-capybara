require 'spec_helper'

def login
  visit '/en-us/login'
  fill_in 'Email or Username', with: 'user@example.com'
  fill_in 'Password', with: 'letmein'
  click_button 'Log in'
end

feature "Editing my profile" do
  background do
    login
    click_link('Profile');
    click_link('Edit profile');
  end

  scenario "Editing my shizzle successfully", :js => true  do
    fill_in 'Email', :with => 'user@example.com'
    click_link 'Save profile'
    expect(page).to have_content 'Home'
  end
end
