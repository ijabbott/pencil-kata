defmodule PencilTest do
  use ExUnit.Case
  doctest Pencil

  test "when given an empty string, write returns empty string" do
    assert Pencil.write("") == {:ok, ""}
  end

  test "when given a populated string, write returns the string" do
    assert Pencil.write("Hello World!") == {:ok, "Hello World!"}
  end

  test "when given a non-string, write returns error describing proper input" do
    assert Pencil.write({:notString}) == {:error, "Pencil.write only accepts strings"}
  end
end
