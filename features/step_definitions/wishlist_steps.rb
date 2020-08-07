
Given(/^I authorize with a new account$/) do
  @screens.home_screen.click_dot_menu
  @screens.home_screen.click_login
  @screens.login_screen.click_register_now

  first_name = "name#{rand(1..99999)}"
  last_name = "lastname#{rand(1..99999)}"
  full_name = first_name + " " + last_name
  @email = "hurre#{rand(1..99999)}@email.com"
  @password = "Parole123"

  @screens.register_screen.set_full_name(full_name)
  @screens.register_screen.set_email(@email)
  @screens.register_screen.set_password(@password)
  @screens.register_screen.set_confirm_password(@password)
  @screens.register_screen.click_sign_up

  @screens.login_screen.set_email(@email)
  @screens.login_screen.set_password(@password)
  @screens.login_screen.click_login
end

When(/^I open the first item in the home screen$/) do
  @screens.home_screen.click_first_shopping_category
end

And(/^I like all the items that are visible$/) do
  @screens.product_screen.click_all_wishlist_items
  # The lower line saves all the item names that got wishlisted
  @shop_items = @screens.product_screen.get_all_added_items
end

And(/^I navigate to the wishlist$/) do
  @screens.home_screen.click_dot_menu
  @screens.home_screen.click_wishlist
end

Then(/^I validate that all the added items are present$/) do
  wishlist_items = @screens.wishlist_screen.get_all_wishlist_items

  # puts "===== The shop items are: "
  # puts @shop_items
  # puts "===== The wishlist items are: "
  # puts wishlist_items

  raise '\nArrays are not equal' unless @shop_items == wishlist_items

end