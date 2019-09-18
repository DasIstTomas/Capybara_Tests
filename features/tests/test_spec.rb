require_relative '../pages/login_page'
require_relative '../pages/secure_page'
require_relative '../spec/spec_helper'
#rspec test_spec.rb - launch argumentsd

login_page = LoginPage.new
secure_page = SecurePage.new

feature "Signing in and out", js: true do

  before { login_page.open_page }

  context "when user tries to authenticate" do

    context "and uses an existing account with correct password" do
      it "successfully authenticates him" do
        login_page.make_login('tomsmith', 'SuperSecretPassword!')
        expect(page).to have_text('You logged into a secure area!')
      end
    end

    context "and uses an existing account with wrong password" do
      it "displays 'Your password is invalid!' error" do
        login_page.make_login('tomsmith', 'wrongPassword')
        expect(page).to have_text('Your password is invalid!')
      end
    end

    context "and uses not existing account" do
      it "displays 'Your username is invalid!' error" do
        login_page.make_login('notExisted', 'password1')
        expect(page).to have_text('Your username is invalid!')
      end
    end

    context "and then logs out" do
      it "successfully logs him out" do
        login_page.make_login('tomsmith', 'SuperSecretPassword!')
        secure_page.make_logout
        expect(page).to have_text('You logged out of the secure area!')
        expect(page).to have_title('The Internet')
      end
    end

  end

end

feature "Opening secure area directly", js: true do

  before { secure_page.open_page }

  context "when user goes to the 'secure' area via url" do
    it "displays 'You must login before' message" do
      expect(page).to have_text('You must login to view the secure area!')
    end

    # This one intentionally falls in order to demonstrate screenshot maker and page saver
    it "displays 'You logged!' message" do
      expect(page).to have_text('You logged into a secure area!')
    end
    
  end

end