require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

    def setup()
        @fish1 = Fish.new("Larry")
    end


end
#Class end
