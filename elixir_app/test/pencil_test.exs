defmodule PencilTest do
  use ExUnit.Case
  doctest Pencil

  test "when given an empty string, write returns empty string" do
    assert Pencil.write("") == ""
  end

  test "when given a populated string, write returns the string" do
    assert Pencil.write("Hello World!") == "Hello World!"
  end
end
