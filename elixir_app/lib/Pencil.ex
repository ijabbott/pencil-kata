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
    {:error, "Pencil.write only accepts strings"}
  end

  def write(text, paper) do
    paper = %{paper | text: text}
    {:ok, paper}
  end
end
