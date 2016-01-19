require "spec_helper"

describe(Animal) do
  describe('#initialize') do
    it('creates a new animal and allows us to access its characteristics') do
      test_animal = create_test_animal()
      expect(test_animal.name()).to(eq('Harry Princess'))
      expect(test_animal.sex()).to(eq('M'))
      expect(test_animal.date_of_admittance()).to(eq('2016-01-01'))
      expect(test_animal.type()).to(eq('cat'))
      expect(test_animal.breed()).to(eq('Maine Coon'))
      expect(test_animal.customer_id()).to(eq(1))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Animal.all()).to(eq([]))
    end
  end
end