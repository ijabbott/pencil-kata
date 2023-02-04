defmodule Pencil do
  @moduledoc """
  Documentation for `Pencil`.
  """

  @doc """
  Write

  ## Examples

      iex> Pencil.write("Hello World!", %Paper{})
      {:ok, %Paper{text: "Hello World!"}}

  """

  def write(text, paper) when not is_binary(text) do
    {:error, "Pencil.write accepts the following parameters: write(binaryInput, %Paper{})"}
  end

  def write(text, %Paper{} = paper) do
    paper = %{paper | text: text}
    {:ok, paper}
  end

  def write(text, _) do
    {:error, "Pencil.write accepts the following parameters: write(binaryInput, %Paper{})"}
  end
end
