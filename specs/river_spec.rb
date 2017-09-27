require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

    def setup()
        @fish1 = Fish.new("Sally")
        @fish2 = Fish.new("Harry")
        @fish3 = Fish.new("Larry")
        @fish4 = Fish.new("Barry")
        @river = River.new("Ellen", [@fish1, @fish2, @fish3, @fish4])

    end

    def test_what_fish_in_river()
        expected = [@fish1, @fish2, @fish3, @fish4]
        actual = @river.list_fish()
        assert_equal(expected, actual)
    end

    def test_fish_number_in_river()
        expected = 4
        actual = @river.count_fish()
        assert_equal(expected, actual)
    end

    def test_remove_fish()
        expected = [@fish1, @fish2, @fish4]
        actual = @river.remove_fish(@fish3)
        assert_equal(expected, actual)
    end




end
#Class end
