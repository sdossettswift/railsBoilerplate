require "test_helper"

class UserCanSignInAndOutTest < Capybara::Rails::TestCase
  setup do 
		visit root_path
		click_link "Sign Up"
		fill_in "Username", with: "test"
		fill_in "Password", with: "12345678"
		fill_in "Password confirmation", with: "12345678"
		click_button "Create User"
		click_link "Sign Out"
	end

	test "Password Validation works" do
		visit root_path
		click_link "Sign In"
		fill_in "Username", with: "test"
		fill_in "Password", with: "1234"
		click_button "Sign In"
		assert_content page, "Something is wrong with your username and/or password" 
	end


	test "User Can Sign In" do
		visit root_path
		click_link "Sign In"
		fill_in "Username", with: "test"
		fill_in "Password", with: "12345678"
		click_button "Sign In"

		assert_content page, "Signed in!"
		assert_content page, "Sign Out"
	end
end