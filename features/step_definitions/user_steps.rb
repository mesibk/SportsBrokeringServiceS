
Given /Given that the following user exists/ do
    User.create! ({:Username => 'aaaa', :password => 123456, :Name => 'faraz', :DOB => Date.new(2001,2,3)})
end

Given /the following teams exist/ do |arg1|
    Team.create! ({:name=> 'Lahore', :team_type=>'domestic'})
	 Team.create! ({:name=> 'India', :team_type=>'international'})
end

Given /the following user exists/ do |arg1|
		User.create! ({:Username=> 'mesi', :password=>'aa'})
end

Given /the following matches exist/ do |arg1|
	Team.create! ({:name=>'Pakistan', :team_type=>'international'})
	Team.create! ({:name=>'India', :team_type=>'international'})
	Team.create! ({:name=>'Lahore', :team_type=>'domestic'})
	Team.create! ({:name=>'Auckland', :team_type=>'domestic'})
   t1=Team.find_by_name("Pakistan")
	t2=Team.find_by_name("India")
	t3=Team.find_by_name("Lahore")
	t4=Team.find_by_name("Auckland")
	Match.create! ({:team_1=>t1, :team_2=>t2, :match_type=>'international'})
	Match.create! ({:team_1=>t3, :team_2=>t4, :match_type=>'domestic'})
end

Given /the following matches1 exist/ do |arg1|
	Team.create! ({:name=>'Pakistan', :team_type=>'international'})
	Team.create! ({:name=>'India', :team_type=>'international'})
	t1=Team.find_by_name("Pakistan")
	t2=Team.find_by_name("India")
	Match.create! ({:team_1=>t1, :team_2=>t2, :match_type=>'international'})
end

# When /I set the username to aaaa/ do
#   visit signin_url
#   fill_in "Usernamw", :with => "aaaa"
#   fill_in "Password", :with => "123456"
#   click_button "Sign in"
# end
Then(/^I am on the session page$/) do
  # pending # express the regexp above with the code you wish you had
  visit session_index_path
end

Then(/^I am on the all matches page$/) do
  # pending # express the regexp above with the code you wish you had
  visit matchs_path
end

Then /I should be on bets_new_path/ do
	visit new_bet_path
end

Then(/^I am on the all teams page$/) do
  # pending # express the regexp above with the code you wish you had
  visit teams_index_path
end

When(/^I set the username to aaaa$/) do
  # pending # express the regexp above with the code you wish you had
  fill_in "username_field", :with => "aaaa"
end

When(/^I set the password to (\d+)$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "password_field", :with => "123456"
end

Then(/^I should see the message "(.*?)"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  # assert page.has_xpath?('//div', :text => "#{arg1}")
  # page.text.should match(arg1)
  page.has_content?(arg1)
end

Then(/^I am on the user page$/) do
  # pending # express the regexp above with the code you wish you had
  # assert page.current_path == user_path
end

When(/^I set the username to billu$/) do
  # pending # express the regexp above with the code you wish you had
  fill_in "username_field", :with => "billu"
end

When(/^I set the password to LordTitos$/) do
  # pending # express the regexp above with the code you wish you had
  fill_in "password_field", :with => "LordTitos"
end

Then(/^I should be on the home page$/) do
  # pending # express the regexp above with the code you wish you had
  # assert page.current_path == root_path
end

Given(/^that the following user wants to sign up$/) do |table|
  # table is a Cucumber::Ast::Table
  # pending # express the regexp above with the code you wish you had
end

Given(/^I am on the new user page$/) do
  # pending # express the regexp above with the code you wish you had
  visit new_user_url
end

When(/^I set the username to "(.*?)"'"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "user_Username", :with => arg1
end

When(/^I set the password to '(\d+)'$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "user_password", :with => arg1
end

When(/^I set the Name to "(.*?)"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "user_Name", :with => arg1
end

When(/^I set the Balance to "(.*?)"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "user_Balance", :with => arg1
end


When(/^I set the amount to "(.*?)"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "amount", :with => arg1
end

When(/^I set the matchID to "(.*?)"$/) do |arg1|
  # pending # express the regexp above with the code you wish you had
  fill_in "matchID", :with => arg1
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When(/^I set the DOB to '(\d+),(\d+),(\d+)'$/) do |arg1, arg2, arg3|
  # pending # express the regexp above with the code you wish you had
  # fill_in 'user_DOB_1i', :with => arg1
  # fill_in "user_DOB_2i", :with => arg2
  # fill_in "user_DOB_3i", :with => arg2
end

When /I (un)?check the following types: (.*)/ do |uncheck, rating_list|
  rating_list.delete!("\"")
  if uncheck.nil?
    rating_list.split(',').each do |field|
      check("type["+field.strip+"]")
    end
  else
    rating_list.split(',').each do |field|
      uncheck("type["+field.strip+"]")
    end
  end
end


Then /I should see Lahore/ do
  page.has_content?("Lahore")
end

Then(/^I should see India$/) do
  page.has_content?("India")
end

Then(/^I should see Auckland$/) do
  page.has_content?("Auckland")
end

Then(/^I should see Pakistan$/) do
  page.has_content?("Pakistan")
end

Then /I should not see India/ do
	!(page.has_content?("India"))
end

When(/^I click on filter/) do
	click_button('Filter')
end


When(/^I click on View All Matches/) do
	click_button('View All Matches')
end

When(/^I click on View All Teams/) do
	click_button('View All Teams')
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end





