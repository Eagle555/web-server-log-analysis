require_relative '../analysis'

describe Parser do
  describe '#load_file and process' do

    before do
      @parser = Parser.new
      @parser.load_file("spec/mock_webserver.log")
    end

   describe "log" do
     it "loads the web server log file in to parser log" do
       expect(@parser.log).to be_an(Array)
       expect(@parser.log.count).to eq(400) 
     end
   end
  
  describe "number of visits" do
    it "process the log and expect number of visits" do
      expect(@parser.number_of_visits).to eq([["/about/2", 74], ["/contact", 73], ["/index", 68], ["/about", 64], ["/help_page/1", 61], ["/home", 60]])
    end
  end
 end

end