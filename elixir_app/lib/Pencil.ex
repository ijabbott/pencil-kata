defmodule Pencil do
  @moduledoc """
  Documentation for `Pencil`.
  """

  @doc """
  Write

  ## Examples

      iex> Pencil.write("Hello World!")
      {:ok, "Hello World!"}

  """

  def write(text) when not is_binary(text) do
    {:error, "Pencil.write only accepts strings"}
  end

  def write(text) do
    {:ok, text}
  end
end
