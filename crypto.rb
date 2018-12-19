require 'digest'

puts 'Введите фразу'
talk = STDIN.gets.chomp

puts 'Каким способом зашифровать:'
puts '1. MD5'
puts '2. SHA1'
puts '3. SHA2'
crypt = STDIN.gets.chomp

while crypt != '1' && crypt != '2' && crypt != '3'
  puts 'Введите либо 1, либо 2, либо 3'
  puts '1. MD5'
  puts '2. SHA1'
  puts '3. SHA2'
  crypt = STDIN.gets.chomp
end

case crypt
when '1'
  puts Digest::MD5.hexdigest(talk.to_s)
when '2'
  puts Digest::SHA1.hexdigest(talk.to_s)
else
  puts Digest::SHA2.hexdigest(talk.to_s)
end
