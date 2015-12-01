queue = []

queue << 1
queue << 2
queue << 3

loop do
  context = queue.pop

  if context > 1
    queue << 4
  end

  puts context

  break unless context
end

# producer = Thread.new do
#   5.times do |i|
#      sleep rand(i) # simulate expense
#      queue << i
#      puts "#{i} produced"
#   end
# end
#
# consumer = Thread.new do
#   5.times do |i|
#      value = queue.pop
#      sleep rand(i/2) # simulate expense
#      puts "consumed #{value}"
#   end
# end
