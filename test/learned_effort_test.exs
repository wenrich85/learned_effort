defmodule LearnedEffortTest do
  use ExUnit.Case
  doctest LearnedEffort

  test "greets the world" do
    assert LearnedEffort.hello() == :world
  end
end
