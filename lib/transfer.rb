class Transfer

  attr_accessor :sender, :receiver, :amount, :status, :bankaccount
  attr_reader


  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end


  def valid?(sender, receiver)
    
  end



end
