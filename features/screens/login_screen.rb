class LoginScreen

  def initialize
    @register_now_button = Elements.new(:id, 'com.view9.foreveryng:id/btnRegister')
    @email_field = Elements.new(:id, 'com.view9.foreveryng:id/etEmail')
    @password_field = Elements.new(:id, 'com.view9.foreveryng:id/etPassword')
    @login_button = Elements.new(:id, 'com.view9.foreveryng:id/btnLogin')
    @login_text = Elements.new(:id, 'com.view9.foreveryng:id/tvLogin')
  end

  def click_register_now
    @register_now_button.click
  end

  def click_login
    @login_button.click
  end

  def set_email(text)
    @email_field.set(text)
  end

  def set_password(text)
    @password_field.set(text)
  end

  def is_login_screen_displayed
    return @login_text.get_text == "Log In"
  end

end
