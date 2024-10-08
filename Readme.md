# CS3710 Cheat Sheet/Commands

## Project Creation
Ruby --version //lists current ruby version
Rails --version //lists current version of rails

rails new portfolio_app --skip -bundle //creates new rails portfolio project
cd portfolio //enter the portfolio portfolio
bundle install //installs dependencies based on gem file

## Rails Commands
rails server -b 0.0.0.0 //starts rails application on local host
rails generate scaffold Student first_name:string last_name:string school_email:string major:string minor:string graduation_date:date //creates a student model with key value pairs such as first_name key with value of type string

Current Process
Doc:https://docs.google.com/document/d/1yowCCANL-UbDkiWbj2wh_PvSUnlS07ucG0yg09_aSDU/edit?tab=t.0#heading=h.1fob9te 
added 3/8  test conditions to test/models/student_test.rb

next
add to app/models/student.rb
