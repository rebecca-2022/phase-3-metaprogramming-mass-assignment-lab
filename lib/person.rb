require 'pry'
class Person
@@all = []
  def initialize attributes
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
      @@all << self
    end
  end
  def self.all
    @@all
  end
end

person_1 = {name: "Susan", height: "5'11\"", eye_color: "Green"}
person_2 = { name: "Bob", hair_color: "Brown"}
person_3 = {name: "Spencer", hair_color: "N/A", height: "medium", weight: "good", handed: "righty"}
# binding.pry
# 0