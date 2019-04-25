File.open("data.txt", "w") do |text|
    a = Array.new(5)
    a[0] = gets.to_i
    a[1] = gets.to_i
    a[2] = gets.to_i
    a[3] = gets.to_i
    a[4] = gets.to_i
    text.puts a
end

File.open("data.txt", "r") do |file|
    file.each_line do |num|
        if num  %2 == 0
            puts num
        end 
    end
end
