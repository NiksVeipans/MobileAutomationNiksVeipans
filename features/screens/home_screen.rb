class HomeScreen

  def initialize
    @dot_menu_button = Elements.new(:id, 'action_overflow_menu')
    @login_button = Elements.new(:xpath, '//android.widget.ListView/*[@index=6]')
    @main_logo = Elements.new(:id, 'rel_search')
    @first_shopping_category = Elements.new(:xpath, '//android.support.v7.widget.RecyclerView/*[@index = 0]')
    @wishlist_button = Elements.new(:xpath, '//android.widget.ListView/*[@index=3]')
  end

  def click_dot_menu
    @dot_menu_button.click
  end
  
  def click_login
    @login_button.click
  end

  def is_main_logo_displayed
    @main_logo.is_displayed
  end

  def click_first_shopping_category
    @first_shopping_category.click
  end

  def click_wishlist
    @wishlist_button.click
  end

end