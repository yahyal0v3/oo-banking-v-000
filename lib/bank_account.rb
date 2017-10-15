class BankAccount
  attr_reader :name, :balance, :status

  def initialize(name)
    @name = name
    self.balance = 1000
    self.status = open
  end

end
