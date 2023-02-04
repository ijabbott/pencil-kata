defmodule PencilTest do
  use ExUnit.Case
  doctest Pencil

  test "when given an empty string, write returns empty string" do
    assert Pencil.write("") == ""
  end
end
