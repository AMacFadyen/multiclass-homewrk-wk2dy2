require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class TestBear < MiniTest::Test

    def setup()
        @bear = Bear.new("Yogi", [])

        @fish1 = Fish.new("Sally")
        @fish2 = Fish.new("Harry")
        @fish3 = Fish.new("Larry")
        @fish4 = Fish.new("Barry")

        @river = River.new("Ellen", [@fish1, @fish2, @fish3, @fish4])

    end

    def test_eat_fish()
    expected = [@fish1]
    actual = @bear.eat_fish(@fish1)
    assert_equal(expected, actual)
    # assert_equal(3, @river.count_fish())
    end

    def test_catch_fish()
        @bear.catch_fish(@river, @fish1)
        assert_equal(3, @river.count_fish())
    end



end
#Class end
