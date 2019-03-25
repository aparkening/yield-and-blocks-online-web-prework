# Iterate through input array and execute yield block
def hello_t(array)
  # If block is passed, return array
  if block_given?
    i = 0
    while i < array.length
      yield array[i]
      i = i + 1
    end
    array # Return original array
  else 
    puts "Hey! No block was given!"
  end
end

=begin 
# Call method
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end
=end

