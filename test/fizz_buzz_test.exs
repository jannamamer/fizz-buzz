ExUnit.start

defmodule FizzBuzzTest do
    use ExUnit.Case

    test "number divisible by 3" do
        result = FizzBuzz.get_fizz_buzz(99)
        assert result == "Fizz"
    end
    
    test "number divisible by 5" do
        result = FizzBuzz.get_fizz_buzz(100)
        assert result == "Buzz"
    end

    test "number divisible by 3 and 5" do
        result = FizzBuzz.get_fizz_buzz(60)
        assert result == "FizzBuzz"
    end
    
    test "number not divisible by 3 or 5" do
        result = FizzBuzz.get_fizz_buzz(58)
        assert result == 58
    end
end
