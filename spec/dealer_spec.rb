require('rspec')
require('dealer')

describe(Dealership) do
  before() do
    Dealership.clear()
  end


  describe('#name') do
    it("returns the name of the dealership") do
      test_dealer = Dealership.new("My Dealer")
      expect(test_dealer.name()).to(eq("My Dealer"))
    end
  end

  describe('#id') do
    it("returns id property of dealership") do
      test_dealer = Dealership.new("My Dealer")
      expect(test_dealer.id()).to(eq(1))
    end
  end

  describe('#cars') do
    it("initially returns an empty array of cars for the dealership") do
    test_dealer = Dealership.new("My Dealer")
    expect(test_dealer.cars()).to(eq([]))
    end
  end

end
