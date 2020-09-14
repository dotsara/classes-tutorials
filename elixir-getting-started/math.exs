#defmodule Math do
#  def sum(a,b) do
#    do_sum(a,b)
#  end
#
#  defp do_sum(a, b) do
#    a + b
#  end
#end

#IO.puts Math.sum(1, 2)
#IO.puts Math.do_sum(1, 2)

#IO.puts "moving to guards example"

defmodule Math do
  def zero?(0) do
    true
  end

  def zero?(x) when is_integer(x) do
    false
  end
end

# hiding these to try to follow examples in function capturing
#IO.puts Math.zero?(0)
#IO.puts Math.zero?(1)
#IO.puts Math.zero?([1, 2, 3])
#IO.puts Math.zero?(0.0)
