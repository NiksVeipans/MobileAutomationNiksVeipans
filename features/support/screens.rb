class Screens

  def home_screen
    @home_screen = HomeScreen.new
  end

  def login_screen
    @login_screen = LoginScreen.new
  end

  def register_screen
    @register_screen = RegisterScreen.new
  end

  def product_screen
    @product_screen = ProductScreen.new
  end

  def wishlist_screen
    @wishlist_screen = WishlistScreen.new
  end

end