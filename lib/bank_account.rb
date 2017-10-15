class BankAccount
  attr_reader :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(n)
    self.balance += n
  end

  def display_balance
    "You balance is $#{self.balance}."
  end

end
