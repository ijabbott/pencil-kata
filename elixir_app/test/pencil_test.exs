defmodule PencilTest do
  use ExUnit.Case
  doctest Pencil

  test "when given a non-string as the first argument, write returns error describing proper input" do
    paper = %Paper{}
    assert Pencil.write({:notString}, paper) == {:error, "Pencil.write accepts the following parameters: write(binaryInput, %Paper{})"}
  end

  test "when given a non-paper as the second argument, write returns error describing proper input" do
    assert Pencil.write("Hello World!", "not paper") == {:error, "Pencil.write accepts the following parameters: write(binaryInput, %Paper{})"}
  end

  test "when given an empty string, write does not write on the paper" do
    paper = %Paper{}
    {:ok, updatedPaper} = Pencil.write("", paper)
    assert updatedPaper.text == ""
  end

  test "when given text, write returns the updated paper" do
    paper = %Paper{}
    {:ok, updatedPaper} = Pencil.write("Hello World!", paper)
    assert updatedPaper.text == "Hello World!"
  end

  test "when given a pre-populated paper and text, write appends the given text to the paper" do
    paper = %Paper{ text: "Hello "}
    {:ok, updatedPaper} = Pencil.write("World!", paper)
    assert updatedPaper.text == "Hello World!"
  end
end
