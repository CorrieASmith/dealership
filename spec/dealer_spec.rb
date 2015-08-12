require('rspec')
require('dealer')
require('vehicle')

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

    it("Takes in multiple cars, returns cars list") do
      test_dealer = Dealership.new("My Dealer")
      test_car1 = Vehicle.new("Honda", "Civic", 2000)
      test_car2 = Vehicle.new("Audi", "A8", 2014)
      test_dealer.add_vehicle(test_car1)
      test_dealer.add_vehicle(test_car2)
      expect(test_dealer.cars()).to(eq([test_car1, test_car2]))
    end

  end

  describe('#save') do
    it("adds a dealership to the array of saved dealerships") do
      test_dealer = Dealership.new("My Dealer")
      test_dealer.save()
      expect(Dealership.all()).to(eq([test_dealer]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved dealerships") do
      Dealership.new("My Dealer").save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns the name of a dealership by its id number") do
      test_dealer = Dealership.new("My Dealer")
      test_dealer.save()
      test_dealer2 = Dealership.new("Your Dealer")
      test_dealer2.save()
      expect(Dealership.find(test_dealer.id())).to(eq(test_dealer))
    end
  end

  describe('#add_vehicle') do
    it("adds a new vehicle to a dealership") do
      test_dealer = Dealership.new("My Dealer")
      test_vehicle = Vehicle.new("Honda", "Civic", 2000)
      test_dealer.add_vehicle(test_vehicle)
      expect(test_dealer.cars()).to(eq([test_vehicle]))
    end
  end
end
