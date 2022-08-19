defmodule DupfileTest do
  use ExUnit.Case
  doctest Dupfile

  test "greets the world" do
    assert Dupfile.dupfile() == :hello
  end
end
