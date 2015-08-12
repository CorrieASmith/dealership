require('rspec')
require('dealer')

describe(Dealership) do
  before() do
    Dealership.clear()
  end
end

describe('#name') do
  it("returns the name of the dealership") do
    test_dealer = Dealership.new("My Dealer")
    expect(test_dealer.name()).to(eq("My Dealer"))
  end

end
