require 'minitest/autorun'         # => true
require 'minitest/pride'           # => true
require_relative '../lib/changer'  # => true

class ChangerTest < MiniTest::Test

  def test_changer_exists
    assert(Changer)        # => true
  end

  def test_run_works
    assert_respond_to(Changer, :run)  # => true
  end

  def test_run_with_5
    assert_equal([5], Changer.run(5))
  end

end


# >> Run options: --seed 9765
# >>
# >> # Running:
# >>
# >> .E.
# >>
# >> Finished in 0.000923s, 3248.8664 runs/s, 2165.9109 assertions/s.
# >>
# >>   1) Error:
# >> ChangerTest#test_run_with_5:
# >> NoMethodError: undefined method `<<' for nil:NilClass
# >>     /Users/ryep/theironyard/week4/day2/changer/lib/changer.rb:8:in `run'
# >>     /Users/ryep/theironyard/week4/day2/changer/spec/changer_test.rb:16:in `test_run_with_5'
# >>
# >> 3 runs, 2 assertions, 0 failures, 1 errors, 0 skips
