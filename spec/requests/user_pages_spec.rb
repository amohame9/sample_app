require 'spec_helper'

describe "User Pages" do
  
  subject { page }

  describe	"sign up page" do
  	before { visit signup_path }

  	it { should have_selector('h1', text: 'Sign Up') }
  	it { should have_selector('title', text: full_title('Sign Up'))}
  end

  	it "should have the right links on the layout" do
  		visit root_path
  		click_link  "About"
  		page.should have_selector 'title', text: full_title('About Us')
  		click_link  "Help"
  		page.should have_selector 'title', text: full_title('Help')
  		click_link  "Contact"
  		page.should have_selector 'title', text: full_title('Contact')
  		click_link  "Home"
  		click_link  "Sign up Now!"
  		page.should have_selector 'title', text: full_title('Sign Up')
  	end
end
