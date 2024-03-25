###
#
#  Sort integer arguments (ascending) 
#
###

result = []

ARGV.each do |arg|
    # Skip if not an integer
    next if arg !~ /^-?[0-9]+$/

    # Convert to integer
    i_arg = arg.to_i

    # Insert result at the right position
    if result.empty? || i_arg >= result[-1]
        result << i_arg
    else
        result.each_with_index do |num, index|
            if i_arg <= num
                result.insert(index, i_arg)
                break
            end
        end
    end
end

puts result
