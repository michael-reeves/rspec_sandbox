require "car"

RSpec.describe "Car" do

	describe "attributes" do


		let(:car) { Car.new }

		# "let" is better than "before" for
		# setting up instance variables
		# before(:example) do
		#   @car = Car.new
		# end

		it "allows reading and writing for :make" do
			pending("debugging a problem")
			car.make = 'Tes'
			expect(car.make).to eq('Test')
		end

		it "allows reading and writing for :year" do
			car.year = 9999
			expect(car.year).to eq(9999)
			#car.year.should eq(9999) 	# deprecated syntax
		end

		it "allows reading and writing for :color" do
			car.color = 'foo'
			expect(car.color).to eq('foo')
		end

		it "allows reading for :wheels" do
			expect(car.wheels).to eq(4)
		end

		it "allows writing for doors"   # omitting the do/end block makes this a
																		# pending example

	end

	describe ".colors" do		# ruby convention class methods start with a .

		let(:colors) { ['blue', 'black', 'red', 'green'] }

		it "returns an array of color names" do
			expect(Car.colors).to match_array(colors)
		end

	end

	describe "#full_name" do	# ruby convention instance methods start with a #

		let(:honda) { Car.new(:make => 'Honda', :year => 2004, :color => 'blue') }
		let(:new_car) { Car.new }

		it "returns a string in the expected format" do
			expect(honda.full_name).to eq('2004 Honda (blue)')
		end

		# when initialized in this context
		context 'when initialized with no arguments' do
			it "returns a string using default values" do
				expect(new_car.full_name).to eq('2007 Volvo (unknown)')
			end
		end

	end

end
