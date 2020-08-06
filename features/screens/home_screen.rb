class HomeScreen

  def initialize
    # @burger_menu_button = Elements.new(:xpath,'')
    @dot_menu_button = Elements.new(:id, 'com.view9.foreveryng:id/action_overflow_menu')
    @login_button = Elements.new(:xpath, '//android.widget.LinearLayout[7]/android.widget.LinearLayout[@resource-id = "com.view9.foreveryng:id/content"]')
    @main_logo = Elements.new(:xpath, '//*[@resource-id = "com.view9.foreveryng:id/rel_search"]')
    @first_shopping_category = Elements.new(:xpath, '//android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.ImageView[@resource-id = "com.view9.foreveryng:id/thumbnail"]')
    @wishlist_button = Elements.new(:xpath, '//android.widget.LinearLayout[4]/android.widget.LinearLayout[@resource-id = "com.view9.foreveryng:id/content"]')
  end

  def click_dot_menu
    @dot_menu_button.click
  end

  def click_burger_menu
    @burger_menu_button.click
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