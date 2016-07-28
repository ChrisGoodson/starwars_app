class Ticket

  def get_ticket
    # nums =* (0..9)
    # let =* ('a'..'z')
    # c_let =* ('A'..'Z')
    list = (0..9).to_a + ("a".."z").to_a + ("A".."Z").to_a
    # list =[nums,let,c_let]
    Array.new(15) do
      list.sample
    end.join('')
  end



end