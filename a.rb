# A - Full House
card = gets.chomp.split.map(&:to_i)
check = {}

card.each do |i|
  check[i] ||= 0
  check[i]  += 1
end

if check.size == 2 then
  check.each_value do |v|
    if v == 2 or v == 3 then
      puts "Yes"
      exit
    else
      puts "No"
      exit
    end
  end
else
  puts "No"
end
