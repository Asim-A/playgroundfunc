defmodule PlaygroundfuncTest do
  use ExUnit.Case
  doctest Playgroundfunc

  test "greets the world" do
    assert Playgroundfunc.hello() == :world
  end
end
