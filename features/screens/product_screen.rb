class ProductScreen

  def initialize
    @wishlist_button = Elements.new(:id, 'tbLove')
    @visible_product_names = Elements.new(:id, 'tvProductTitle')
  end

  def click_all_wishlist_items
    @wishlist_button.click_every_element_in_the_list
  end

  def get_all_added_items
    text_array = Array.new()
    element_array = @visible_product_names.get_multiple_elements(timeout: 20)
    element_array.each do | element |
      text_array << element.text
    end
    return text_array
  end

end