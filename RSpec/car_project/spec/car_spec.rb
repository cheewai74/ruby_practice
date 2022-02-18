require 'car'

describe 'Car' do

  describe 'attributes' do
    
    let(:car) {Car.new}

    # before(:example) do
    #   @car = Car.new
    # end

    it "allows reading and writing for :make" do
      # car = Car.new
      # @car.make = 'Test'

      car.make = 'Test'
      expect(car.make).to eq('Test')
    end
    
    it "allows reading and writing for :year" do
      # car = Car.new
      # @car.make = 'Test'

      car.year = 9999
      expect(car.year).to eq(9999)
    end
    
    it "allows reading and writing for :color" do
      # car = Car.new
      # @car.make = 'Test'

      car.color = 'foo'
      expect(car.color).to eq('foo')
    end
    
    it "allows reading for :wheels" do
      # car = Car.new
      # @car.make = 'Test'

      expect(car.wheels).to eq(4)
    end
    
  end
  
  describe '.colors' do
    let(:colors){['blue', 'black', 'red', 'green']}
    it "returns an array of color names" do
      # c = ['blue', 'black', 'red', 'green']
      # expect(Car.colors).to match_array(c)
      expect(Car.colors).to match_array(colors)
    end

  end
  
  describe '#full_name' do
    let(:honda){Car.new(:make => 'Honda', :year => 2004, :color => 'blue')}
    let(:new_car){Car.new}
    it "returns a string in the expected format" do
      #@honda = Car.new(:make => 'Honda', :year => 2004, :color => 'blue')
      #expect(@honda.full_name).to eq('2004 Honda (blue)')

      expect(honda.full_name).to eq('2004 Honda (blue)')
    end
    
    context 'when initialized with no arguments' do
      it 'returns a string using default values' do
        # car = Car.new
        # expect(car.full_name).to eq('2007 Volvo (unknown)')

        expect(new_car.full_name).to eq('2007 Volvo (unknown)')
      end
    end

  end

end
