class Parser
  attr_reader :log

  def initialize
    @log = Array.new # store imported values from the file
  end

  def load_file(filename = nil)
    filename ||= ARGV.first # takes first argument from the command line
    filename ||= "webserver.log" # assign default file name if it isn't given
    File.file?(filename) ? load_log(filename) : false # load file or return false if does not exist
  end

  private

  def load_log(filename)
    File.open(filename, "r") do |file| # open file
      file.readlines.each do |line| # read lines
        link, ip = line.chomp.split(' ') # split the lines by whitespace
        @log << { link => ip } # store the values in the array
      end
    end
  end
end