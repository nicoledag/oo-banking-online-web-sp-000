require 'pry'
class Transfer

  attr_accessor :sender, :receiver, :amount, :status, :bankaccount
  attr_reader

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid?
    @receiver.valid?
  end

  def execute_transaction
    binding.pry
    if self.valid?
      @receiver.balance = @receiver.balance + @amount
      @sender.balance = @sender.balance - @amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end

  end



end
