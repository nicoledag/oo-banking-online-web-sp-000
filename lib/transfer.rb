class Transfer

  attr_accessor :sender, :receiver, :amount
  attr_reader


  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end


end
