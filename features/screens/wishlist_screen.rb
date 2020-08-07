class WishlistScreen

  def initialize
    @visible_wishlist_items = Elements.new(:id, 'tvProductTitle')
  end

  def get_all_wishlist_items
    text_array = Array.new()
    element_array = @visible_wishlist_items.get_multiple_elements
    element_array.each do | element |
      text_array << element.text
    end
    return text_array
  end

end
