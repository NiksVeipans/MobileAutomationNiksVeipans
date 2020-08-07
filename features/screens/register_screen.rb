class RegisterScreen

  def initialize
    @sign_up_button = Elements.new(:id, 'btnSignUp')
    @full_name_field = Elements.new(:id, 'etFullName')
    @email_field = Elements.new(:id, 'etEmail')
    @password_field = Elements.new(:id, 'etPassword')
    @confirm_password_field = Elements.new(:id, 'etConfirmPassword')
  end

  def click_sign_up
    @sign_up_button.click
  end

  def set_full_name(text)
    @full_name_field.set(text)
  end

  def set_email(text)
    @email_field.set(text)
  end

  def set_password(text)
    @password_field.set(text)
  end

  def set_confirm_password(text)
    @confirm_password_field.set(text)
  end

end

