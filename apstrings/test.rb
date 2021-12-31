require 'apstrings'

source_path = File.join(Dir.pwd, '..', 'Localizable.strings')

strings = Apstrings.parse(source_path)

# puts strings.to_hash
# puts strings.to_json

puts strings.to_hash.count

puts strings.to_hash['No limit']
puts strings.to_hash['today']
