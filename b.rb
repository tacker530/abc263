# B - Ancestor
N = gets.to_i
a = gets.chomp.split.map(&:to_i)
anc = [0, *a].sort

#pp anc

x = anc[N-1]
cnt  = 0

N.times do |i|
  cnt += 1
  x = anc[ x - 1 ]
  if x == 0 then
    puts cnt
    exit
  end
end
puts cnt