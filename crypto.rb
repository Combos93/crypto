require 'digest'

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end # Гем на русский язык!

puts "Введите фразу"
talk = STDIN.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"
crypt = STDIN.gets.chomp

while (crypt != "1" and crypt != "2" and crypt != "3")
  puts "Введите либо 1, либо 2, либо 3"
  puts "1. MD5"
  puts "2. SHA1"
  puts "3. SHA2"
  crypt = STDIN.gets.chomp
end

case crypt
when "1"
  puts Digest::MD5.hexdigest("#{talk}")
when "2"
  puts Digest::SHA1.hexdigest("#{talk}")
when "3"
  puts Digest::SHA2.hexdigest("#{talk}")
end
