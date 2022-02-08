require_relative "analysis.rb"

parser = Parser.new # New parser
if parser.load_file # load and check if file exist
  puts "Number of visitors"
  puts parser.number_of_visits # display number of visitors
end