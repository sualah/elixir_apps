defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
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
  time = Time.new!(16, 30, 0, 0)
  date = Date.new!(2025, 1, 1)
  date_time = DateTime.new!(date, time, "Etc/UTC")
  IO.inspect(time)
  IO.inspect(date)
  IO.inspect(date_time)
  IO.inspect(date_time.year)
  

  end
end
