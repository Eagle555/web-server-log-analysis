class Parser
  attr_reader :log

  def initialize
    @log = Array.new # store imported values from the file
  end

  def number_of_visits # count number of visits
    count_visits(log) # count and return the amount
  end 

  def number_of_unique_visits # count number of unique visits
    count_visits(log.uniq { |ip| ip.values }) # count and return the amount, only pass unique IPs
  end 

  def load_file(filename = nil)
    filename ||= ARGV.first # takes first argument from the command line
    filename ||= "webserver.log" # assign default file name if it isn't given
    File.file?(filename) ? load_log(filename) : false # load file or return false if does not exist
  end

  private

  def count_visits(arg)  # method takes argument and returns value
    visits = Hash.new(0) # stores processed visitors
    arg.each do |line| 
      line.each { |link| visits[link.first] += 1 }  # counts amount of visits and store them in hash
    end
    visits.sort_by(&:last).reverse # sort links by amount of visits in reverse order
  end

  def load_log(filename)
    File.open(filename, "r") do |file| # open file
      file.readlines.each do |line| # read lines
        link, ip = line.chomp.split(' ') # split the lines by whitespace
        @log << { link => ip } # store the values in the array
      end
    end
  end

end
