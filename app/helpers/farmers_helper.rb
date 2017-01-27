module FarmersHelper
  def dollar_sign
    binding.pry
    ranged_num = @farmer.price_range.split("-").map(&:to_i)
    range = ranged_num[0]..ranged_num[1]
    if range.include?(1..20)
      "$" 
    elsif range.include?(20..35)
      "$$" 
    elsif range.include?(35..50)
      "$$$" 
    elsif range.include?(50..ranged_num[1])
      "$$$$" 
    else
      @farmer.price_range
    end
  end          
end
