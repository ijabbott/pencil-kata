defmodule WriterTest do
  use ExUnit.Case

  test "when given a non-pencil as the first argument, write returns error describing proper input" do
    paper = %Paper{}
    assert Writer.write("non-pencil", "Hello World!", paper) == {:error, "Writer.write accepts the following parameters: write(%Pencil{}, binaryInput, %Paper{})"}
  end

  test "when given a non-string as the second argument, write returns error describing proper input" do
    paper = %Paper{}
    pencil = %Pencil{}
    assert Writer.write(pencil, {:notString}, paper) == {:error, "Writer.write accepts the following parameters: write(%Pencil{}, binaryInput, %Paper{})"}
  end

  test "when given a non-paper as the third argument, write returns error describing proper input" do
    pencil = %Pencil{}
    assert Writer.write(pencil, "Hello World!", "not paper") == {:error, "Writer.write accepts the following parameters: write(%Pencil{}, binaryInput, %Paper{})"}
  end
end
