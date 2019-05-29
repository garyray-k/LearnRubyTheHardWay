# create a mapping of state abbreviation
states = {
    :Oregon => 'OR',
    :Florida => 'FL',
    :California => 'CA',
    :NewYork => 'NY',
    :Michigan => 'MI'
}

# create a basic set of states and some cities in them
cities = {
    :CA => 'San Francisco',
    :MI => 'Detroit',
    :FL => 'Jacksonville'
}

# add some more cities
cities[:NY] = 'New York'
cities[:OR] = 'Portland'

# put out some cities
puts '-' * 10
puts "NY State has: #{cities[:NY]}"
puts "OR State has: #{cities[:OR]}"

# put some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states[:Michigan]}"
puts "Florida's abbreviation is: #{states[:Florida]}"

# do it by using the state then cities hash
puts '-' * 10
puts "Michigan has: #{cities[states[:Michigan].to_sym]}"
puts "Florida has: #{cities[states[:Florida].to_sym]}"

# puts every state abbreviation
puts '-' * 10
states.each { |state, abbreviation| puts "#{state} is abbreviated #{abbreviation}" }

# puts every city in state
puts '-' * 10
cities.each {|abbreviation, city| puts "#{abbreviation} has the city #{city}" }

# now do both at the same time
puts '-' * 10
states.each do |state, abbreviation|
  city = cities[abbreviation.to_sym]
  puts "#{state} is abbreviated #{abbreviation} and has city #{city}"
end

puts '-' * 10
# by default ruby says "nil" when something isn't there
state = states[:Texas]

if !state
  puts "Sorry, no Texas."
end

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for state 'TX' is: #{city}"