require 'spec_helper'

describe "StaticPages" do

  describe "Home pages" do
    it "should have the content 'Sample app'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Home")
    end

  end

  describe "Help pages" do
    it "shoule have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About pages" do
    it "Should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end


end
