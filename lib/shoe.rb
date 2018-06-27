class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []
  def initialize(brand)
    @brand = brand
    found = false
    BRANDS.each do |b|
      if b == brand
        found = true 
      end
    end
    if found == false
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end