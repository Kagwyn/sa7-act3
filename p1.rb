require 'csv'

data=[]
first_line = true

CSV.foreach('data.csv') do |line|
    if first_line
        $headers = line
        first_line = false
    else
        data << { $headers[0] => line[0], $headers[1] => line[1], $headers[2] => line[2] }
    end
end

puts data