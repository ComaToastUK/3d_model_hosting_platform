require "rails_helper"

feature "user login" do

  context "user not signed in" do
    it "user can login and logout" do
      visit "/"
      expect(page).to have_content("Sign up")
      expect(page).to have_content("Sign in")
    end
  end

  it "should not see 'sign out' link" do
      visit "/"
      expect(page).not_to have_link('Logout')
    end
  end

  context "user signed in on the homepage" do

    it "should see 'sign out' link" do
      sign_up
      expect(page).to have_link('Logout')
    end

    it "should not see a 'sign in' link and a 'sign up' link" do
      sign_up
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end

  end

    def sign_up
      visit "/"
      first(:link, 'Sign up').click
      fill_in('Email', with: 'test@example.com')
      fill_in('user[password]', with: 'testtest')
      fill_in('Password confirmation', with: 'testtest')
      click_button('Sign up')
    end
