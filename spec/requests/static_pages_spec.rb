require 'spec_helper'

describe "StaticPages" do

   subject { page }

   describe "Home page" do
      before do
         visit '/static_pages/home'
      end

      it "should have the right title" do
         page.should have_selector('title', :text => "WomenWhoCode")
      end

      it "should have the ccontent 'Women Who Code'" do
         page.should have_selector('Women Who Code')
      end
      
      it "should have the h1 header 'Hello, Ruby Tuesday!'" do
         page.should have_selector('h1', :text => 'Hello, Ruby Tuesday!')
      end
   end



end
