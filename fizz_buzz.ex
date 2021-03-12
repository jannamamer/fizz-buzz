defmodule FizzBuzz do
    defmacro is_divisible_by_3(x) do
        quote do: unquote(x) |> rem(3)
    end

    defmacro is_divisible_by_5(x) do
        quote do: unquote(x) |> rem(5)
    end

    def fizz_buzz do
        Enum.each(1..100, fn(x) ->
            get_fizz_buzz(x)
            |> IO.puts()
        end)
    end

    def get_fizz_buzz(x) when is_divisible_by_3(x) == 0 and is_divisible_by_5(x) == 0 do
        "FizzBuzz"
    end
    def get_fizz_buzz(x) when is_divisible_by_3(x) == 0, do: "Fizz"
    def get_fizz_buzz(x) when is_divisible_by_5(x) == 0, do: "Buzz"
    def get_fizz_buzz(x), do: x
end
