class HomeScreen

  def initialize
    # @burger_menu_button = Elements.new(:xpath,'')
    @dot_menu_button = Elements.new(:id, 'com.view9.foreveryng:id/action_overflow_menu')
    @login_button = Elements.new(:xpath, '//android.widget.LinearLayout[7]/android.widget.LinearLayout[@resource-id = "com.view9.foreveryng:id/content"]')
    @main_logo = Elements.new(:xpath, '//*[@resource-id = "com.view9.foreveryng:id/rel_search"]')
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

end