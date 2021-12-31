# frozen_string_literal: true

require 'apfel'

source_path = File.join(Dir.pwd, '..', 'Localizable.strings')

strings = Apfel.parse(source_path)

# puts strings.to_hash
# puts strings.to_json

puts '>>> Keys count:'
puts strings.to_hash.count

puts ">>> Value for key 'today'"
puts strings.to_hash['today']

puts ">>> Value for key 'No limit', which we know is duplicated"
puts strings.to_hash['No limit']
