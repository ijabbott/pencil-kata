defmodule Pencil do
  @moduledoc """
  Documentation for `Pencil`.
  """

  @doc """
  Write

  ## Examples

      iex> Pencil.write(%Pencil{durability: 100}, "Hello World!", %Paper{})
      {:ok, %Pencil{durability: 88}, %Paper{text: "Hello World!"}}

  """

  defstruct [durability: 0]

  @write_error_parameters {:error, "Pencil.write accepts the following parameters: write(%Pencil{}, binaryInput, %Paper{})"}

  def write(_, text, _) when not is_binary(text) do
    @write_error_parameters
  end

  def write(%Pencil{} = pencil, text, %Paper{} = paper) do
    updatedText = paper.text <> text
    paper = %{paper | text: updatedText}
    pencil = %{pencil | durability: calculateNewDurability(pencil, text)}
    {:ok, pencil, paper}
  end

  def write(_, _, _) do
    @write_error_parameters
  end

  defp calculateNewDurability(%Pencil{} = pencil, text) do
    pencil.durability - String.length(text)
  end
end
