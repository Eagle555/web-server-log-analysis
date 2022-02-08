require_relative '../analysis'

describe Parser do
  describe '#load_file' do

    before do
      @parser = Parser.new
      @parser.load_file("spec/mock_webserver.log")
    end

   describe "log" do
     it "loads the web server log file in to parser log" do
       expect(@parser.log).to be_an(Array)
       expect(@parser.log.count).to be(400) 
     end
   end
  end
end