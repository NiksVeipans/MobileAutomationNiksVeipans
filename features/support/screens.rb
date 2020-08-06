class Screens

  def home_screen
    @home_screen = HomeScreen.new
  end

  def registration_screen
    @registration_screen = RegistrationScreen.new
  end

  def account_screen
    @account_screen = AccountScreen.new
  end

  def wishlist_screen
    @wishlist_screen = WishlistScreen.new
  end

  def shop_by_brand_screen
    @shop_by_brand_screen = ShopByBrandScreen.new
  end

end