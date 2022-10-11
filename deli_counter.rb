# Write your code here.
katz_deli = []

def take_a_number(katz_deli, name)
    katz_deli.push(name)
end

take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
take_a_number(katz_deli, "Kent") #=> Welcome, Kent. You are number 3 in line.

def line(katz_deli)
    if katz_deli.empty?
        puts "The line is currently empty."
    else 
        toCat = katz_deli.map { |name| "#{katz_deli.find_index(name)+1}. #{name}" }
        puts "The line is currently: #{toCat.join(' ')}"
    end
end

def now_serving(katz_deli)
    if katz_deli.empty? 
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    end
end

# line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

# line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

# now_serving(katz_deli) #=> "Currently serving Grace."

# line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"