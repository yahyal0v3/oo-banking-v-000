require 'pry'

class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    binding.pry
    if self.status == "complete" || sender.valid? == false
      self.status = "rejected"
    elsif sender.balance > self.amount && self.valid?
      sender.balance -= self.amount
      receiver.deposit(self.amount)
      self.status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
  end

end
