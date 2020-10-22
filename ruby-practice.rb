1. What is Ruby?
    * Ruby is a high level programming launguage
    * Ruby code is read top to bottom
    * Ruby is a interpreted launguage. It does not need to be compiled
    * Everything in Ruby is a Object
    * IRB -> similar to REPL

2. puts, print and p
Puts method will add the line break at the end

puts "hello world"
puts "hello world"
puts 5

print method does not add the line break at the end
print "shubham"
print "hello world"

p method will give a additional clarity
p "shubham"
print "shubham"
puts "shubham
    gokarna"
p "shubham
gokarna"

3. Variables and Constants
name= "Shubham"
place="Gokarna"


p name
name="Shubham V"
p name

NAME= "shubham"
puts NAME
NAME="Vinayak" # warning

methods coverd
number =12
p number.odd? 
p number.even?
p number.methods
p number.class

4. String, Arrays and Hashes

p "shubham".class
name =String.new("shubham")
p name
p name.class
p 5
p 5.class
p 5.to_s.class

words = <<MLS
Line 1
Line 2
Line 3
MLS
puts words

String concatenation
first_name="shubham "
last_name="vinayak"
p first_name+last_name
p first_name.concat(last_name)
p first_name << last_name
p first_name.prepend(last_name)
p first_name.length
p first_name[0]
p first_name[-1]
p first_name.slice(2)
p first_name[2,5]
p first_name.reverse
p first_name.include?("S")

Bang operator
name="shubham"
p name
name_uppercase= name.upcase! 
p name_uppercase
p name #name is not changed add bang operator

Srting interpolation
name="shubham"
p "my anme is #{name}"


Arrays- is a order collectoin of object.
p []
p [].class
number=[1,2,3,4,5]
p number

fruits=["apple", "orange","kiwi"]
p fruits[1]
p fruits.length
p fruits.empty? 
p fruits.nil?
p fruits.first 
p fruits.last 

fruits.push("hello")
p fruits
fruits << "shovel operator"
p fruits

fruits.insert(1, "cubes")
p fruits

element=fruits.pop
p element

.shift and .unshift operator

The spaceship operator
p 5 <=> 5 # 0
p 5 <=> 10 # -1
p 5 <=> 3 # 1
p 5 <=> [1,2,3] #nil

p 1.class
p 1.is_a?(Integer)

for each method is recommended
number= [1,2,3,4,5]
number.each do |n| 
    puts n
end
or

number.each {|n| puts n}

map methods
number=[1,2,3,4,5,6]
results=number.map{ |n| n**2}
p results

object id
a=[1,2,3]
b=[4,5,6]
p a.object_id
p b.object_id

unique method
a=[1,1,1,2,2,3,5,6,7]
p a.uniq

Hashes - stores key value pairs
empty_hash={}
p empty_hash
p empty_hash.class

state= {
    "GA"=>"Goa",
    "KA"=>"Karnataka",
    "AP"=>"Andra pradesh"
}
p state[:GA]

other way is
state= {
    GA:"Goa",
    KA:"Karnataka",
    AP:"Andra pradesh"
}

p state[:KA]
p state.length
p state.empty?
p state.methods

state.each do |key, value|
    p "#{key}-------->#{value}"
end

5. Blocks and Procs
[1,2,3,4].each {|n| puts n**2}

yield keyword
def pass_control 
    puts "starting line of the method"
    yield
    puts "last line of the methods"
end
pass_control {puts "taken the yield line"}

def pass_control(name)
    puts "starting line of the method"
    yield name
    puts "last line of the methods"
end
pass_control("testing") {|name| puts "taken the yield line #{name}"}

Procs
square= Proc.new{|n| n**2}
a=[1,2,3]
b=[4,5,6]
c=[7,8,9]
a_square=a.map(&square)
b_square=b.map(&square)
c_square=c.map(&square)
p a_square
p b_square
p c_square

Time object, File system and Regular expression
puts Time.new
today=Time.new
p today.class
p today.methods

File system
File.open("sometestfile.txt").each do |line|
    puts line
end

Regular expression
name= "shubham"
p name.scan(/shubham/)

classes
p 5.class
p 5.class.superclass

class Gadget 

end

phone= Gadget.new
laptop= Gadget.new
p phone
p laptop


initialize methods
instance variable
instance methods
self keyword6
class Gadget 
    # attr_reader :user
    def initialize
        @user="shubham"
    end

    def info 
        "This is the gadget method"
    end

    def to_s 
        "override to_s methods #{self.class} and #{self.object_id}"
    end

    def user 
        @user
    end
end

phone_user= Gadget.new
p phone_user.object_id
puts phone_user
puts phone_user.instance_variables
puts phone_user.info
puts phone_user.to_s
puts phone_user.user

