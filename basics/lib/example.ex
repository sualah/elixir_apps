defmodule Membership do
  defstruct [:type, :price]
end

defmodule User do
  defstruct [:name, :membership]
end

defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def sum_and_average(numbers) do
    sum = Enum.sum(numbers)
    average = sum / Enum.count(numbers)
    {sum, average}
  end

  def main do
   # x = 5
   # IO.puts(x)
   # IO.puts(:hello)
  #  name = "Sualah"
  #  status = Enum.random([:gold, :silver, :bronze, :"not a member"])

  # ----------- using if else --------------
  # if status === :gold do
  #   IO.puts("Welcome to fancy lounge, #{name}")
  #  else
  #    IO.puts("Get lost")
  #  end

  # ------------- using a switch case ---------
    # case status do
    #   :gold -> IO.puts("Welcome to fancy lounge, #{name}")
    #   :"not a member" -> IO.puts("Get subscribed")
    #   _ -> IO.puts("Get out")
    # end

  # ------- numbers -------
  # IO.puts(10 / 5) # ans: 2.0
  # IO.puts(5 / 10) # ans: 0.5
  # IO.puts(Integer.gcd(25, 30)) # ans: 5

  # --------- dates & times ---------
  # time = Time.new!(16, 30, 0, 0)
  # date = Date.new!(2025, 1, 1)
  # date_time = DateTime.new!(date, time, "Etc/UTC")
  # IO.inspect(time)
  # IO.inspect(date)
  # IO.inspect(date_time)
  # IO.inspect(date_time.year)

  # -------- tuples -------
  # membership = {:bronze, :silver}
  # membership = Tuple.append(membership, :gold)
  # IO.inspect(membership)

  # prices = {5, 10, 15}
  # avg = Tuple.sum(prices) / tuple_size(prices)
  # IO.puts(avg)

  # IO.puts("Average price from #{elem(membership, 0)} #{elem(membership, 1)} #{elem(membership, 2)} is #{avg}")

  # ------- Lists, loops, maps, structs -------

    # grades = [25, 50, 6, 7, 8]

    # new_g = for n <- grades, do: n + 5
    # IO.inspect(new_g)
    # new_g = new_g ++ [100] # append element at the end
    # IO.inspect(new_g)
    # final = [5 | new_g]  #preppend elem at the beginning
    # IO.inspect(final)
    # even = for n <- final, rem(n, 2) == 0, do: n
    # IO.inspect(even)
    # memberships = %{
    #   gold: 3,
    #   silver: 2,
    #   bronze: 1,
    #   none: 0
    # }

    # users = [
    #   {"Sualah", memberships.gold},
    #   {"Amadu", memberships.silver},
    #   {"Hafsah", memberships.bronze},
    #   {"Meme", memberships.none},

    # ]

    # gold_membership = %Membership{type: :gold, price: 25}
    # silver_membership = %Membership{type: :silver, price: 20}
    # bronze_membership = %Membership{type: :bronze, price: 15}
    # none_membership = %Membership{type: :none, price: 0}

    # users = [
    #   %User{name: "Sualah", membership: gold_membership},
    #   %User{name: "Amadu", membership: silver_membership},
    #   %User{name: "Hafsah", membership: bronze_membership},
    #   %User{name: "Meme", membership: none_membership},
    # ]


    # Enum.each(users, fn %User{name: name, membership: membership} -> IO.puts("#{name} has a #{membership.type} membership paying #{membership.price}") end)
    # guessing game(taking inputs)
      # correct = :rand.uniform(10)
      # guess = IO.gets("Guess a number between 0 and 10: ") |> String.trim() |> Integer.parse()

      # IO.inspect(guess)
      # case guess do
      #   {result, ""} -> IO.puts("parse successful #{result}")
      #   {result, other} -> IO.puts("parse partially successful #{result} and #{other}")
      #   :error -> IO.puts("Something went wrong")
      # end

      # if elem(guess, 0) == correct do
      #   IO.puts("You win!")
      # else
      #   IO.puts("You lose! Correct was #{correct}")
      # end

      # functional programming
      numbers = get_numbers() #["1", "2", "3", "4", "5"]
      IO.inspect(numbers)

      # result = Enum.map(numbers, &String.to_integer/1)
      # IO.inspect(result)

      # print_numbers(result)

      {sum, average} = sum_and_average(numbers)
      IO.puts("Sum: #{sum}, average: #{average}")
  end

  def get_numbers do
    IO.puts("Enter numbers separated by spaces: ")
    user_input = IO.gets("") |> String.trim()
    String.split(user_input, " ") |> Enum.map(&String.to_integer/1)
  end

  def print_numbers(numbers) do
    numbers |> Enum.join(",") |> IO.puts()
  end
end
