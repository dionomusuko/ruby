a = Array.new(2)
a[0] = gets.to_i
a[1] = gets.to_i

a.each do |num|
    if num >= 80
        puts num
    end
end