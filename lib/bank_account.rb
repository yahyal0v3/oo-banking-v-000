class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(n)
    self.balance += n
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    true if self.status == "open" && self.balance > 0
  end 

end
