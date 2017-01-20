module FarmersHelper
  def dollar_sign
    if @farmer.price_range == 5..15
        "$"
      elsif @farmer.price_range.to_i == 15..25
        "$$"
      elsif @farmer.price_range.to_i == 25..35
        "$$$"
      else @farmer.price_range.to_i == 35..1000
        "$$$$"
      end
   end          
end
