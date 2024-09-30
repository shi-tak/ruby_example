puts 'start: main.rb'

puts ''
puts 'load sub_a.rb by Karnel#require'
require './sub_a'

puts ''
puts 'load sub_b.rb by Karnel#require_relative'
require_relative 'sub_b'

puts ''
puts 'load sub_c.rb by Karnel#load'
load "./sub_c.rb"

puts ''
puts 'cannot re-load sub_a.rb by Karnel#requre, because it has already been loaded'
require './sub_a'

puts ''
puts 'cannot re-load sub_a.rb by Karnel#requre_relative, because it has already been loaded'
require_relative 'sub_a'

puts ''
puts 'can re-load sub_a.rb by Karnel#load'
load './sub_a.rb'

puts ''
puts 'cannot re-load sub_b.rb by Karnel#requre, because it has already been loaded'
require './sub_b'

puts ''
puts 'cannot re-load sub_b.rb by Karnel#requre_relative, because it has already been loaded'
require_relative 'sub_b'

puts ''
puts 'can re-load sub_b.rb by Karnel#load'
load './sub_b.rb'

puts ''
puts 'can re-load sub_c.rb by Karnel#requre, because it has not been loaded by Karnel#requre or Karnel#requre_relative'
require './sub_c'

puts ''
puts 'cannot re-load sub_c.rb by Karnel#requre_relative, but cannot execute because it has already been loaded'
require_relative 'sub_c'

puts ''
puts 'can re-load sub_c.rb by Karnel#load'
load './sub_c.rb'

puts ''
puts 'finish: main.rb'
