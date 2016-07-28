class Price

 
 attr_reader :full_price
  def get_price
    (49..999).to_a.sample
  end

  def get_cent
    (0..9).to_a.sample
  end

  def get_full_price
    @full_price = "#{get_price}" + "." + "#{get_cent}#{get_cent}"
  end
  

end