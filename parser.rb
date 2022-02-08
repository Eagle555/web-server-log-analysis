# frozen_string_literal: true

require_relative 'analysis'

parser = Parser.new # New parser
if parser.load_file # load and check if file exist
  puts 'Number of visitors'
  puts parser.number_of_visits # display number of visitors
  puts '-------------------------'
  puts 'Number of unique visitors'
  puts parser.number_of_unique_visits # display number of unique visitors
end
