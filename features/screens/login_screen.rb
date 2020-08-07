class LoginScreen

  def initialize
    @register_now_button = Elements.new(:id, 'btnRegister')
    @email_field = Elements.new(:id, 'etEmail')
    @password_field = Elements.new(:id, 'etPassword')
    @login_button = Elements.new(:id, 'btnLogin')
    @login_text = Elements.new(:id, 'tvLogin')
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
