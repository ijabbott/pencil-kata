defmodule PencilTest do
  use ExUnit.Case
  doctest Pencil

  test "when given an empty string, write does not write on the paper" do
    paper = %Paper{}
    {:ok, updatedPaper} = Pencil.write("", paper)
    assert updatedPaper.text == ""
  end

  test "when given a populated string, write returns the string" do
    paper = %Paper{}
    {:ok, updatedPaper} = Pencil.write("Hello World!", paper)
    assert updatedPaper.text == "Hello World!"
  end

  test "when given a non-string, write returns error describing proper input" do
    paper = %Paper{}
    assert Pencil.write({:notString}, paper) == {:error, "Pencil.write only accepts strings"}
  end
end
