require 'pry'

class Building
    attr_accessor :name, :number_of_tenants
    attr_reader :address
    
    @@all = []


    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.average_per_buliding
        sum = all.reduce(0) do |total, tenant|
            total + number_of_tenants
        end
        average = sum / all.length.to_f
        average.round
        binding.pry
    end

end


harkens = Building.new("Harkens", "123 Seasame St.", 4 , 20)
bubbles = Building.new("Bubbles", "678 New York Ct.", 10 , 100)

binding.pry 
0


#  Initializes with a name, address, number of floors, and number of tenants
#  The name and number of tenants should be readable and writeable
#  The address should be readable
#  The number of floors should not be readable or writeable
#  The class should keep track of all buildings that are created
#  The class should tell the average number of tenants in a building
# * A building should have a placard method that returns the name and address of the building
# * A building should have a method returns the average number of tenants per floor