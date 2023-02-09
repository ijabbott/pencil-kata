defmodule PencilTest do
  use ExUnit.Case
  doctest Pencil

  test "when given a non-pencil as the first argument, write returns error describing proper input" do
    paper = %Paper{}
    assert Pencil.write("non-pencil", "Hello World!", paper) == {:error, "Pencil.write accepts the following parameters: write(%Pencil{}, binaryInput, %Paper{})"}
  end

  test "when given a non-string as the second argument, write returns error describing proper input" do
    paper = %Paper{}
    pencil = %Pencil{}
    assert Pencil.write(pencil, {:notString}, paper) == {:error, "Pencil.write accepts the following parameters: write(%Pencil{}, binaryInput, %Paper{})"}
  end

  test "when given a non-paper as the third argument, write returns error describing proper input" do
    pencil = %Pencil{}
    assert Pencil.write(pencil, "Hello World!", "not paper") == {:error, "Pencil.write accepts the following parameters: write(%Pencil{}, binaryInput, %Paper{})"}
  end

  test "when given an empty string, write does not write on the paper" do
    paper = %Paper{}
    pencil = %Pencil{}
    {:ok, _, updatedPaper} = Pencil.write(pencil, "", paper)
    assert updatedPaper.text == ""
  end

  test "when given text, write returns the updated paper" do
    paper = %Paper{}
    pencil = %Pencil{}
    {:ok, _, updatedPaper} = Pencil.write(pencil, "Hello World!", paper)
    assert updatedPaper.text == "Hello World!"
  end

  test "when given a pre-populated paper and text, write appends the given text to the paper" do
    paper = %Paper{text: "Hello "}
    pencil = %Pencil{}
    {:ok, _, updatedPaper} = Pencil.write(pencil, "World!", paper)
    assert updatedPaper.text == "Hello World!"
  end
end
