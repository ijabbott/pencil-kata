defmodule Pencil do
  @moduledoc """
  Documentation for `Pencil`.
  """

  @doc """
  Write

  ## Examples

      iex> Pencil.write(%Pencil{}, "Hello World!", %Paper{})
      {:ok, %Pencil{}, %Paper{text: "Hello World!"}}

  """

  defstruct []

  @write_error_parameters {:error, "Pencil.write accepts the following parameters: write(%Pencil{}, binaryInput, %Paper{})"}

  def write(_, text, _) when not is_binary(text) do
    @write_error_parameters
  end

  def write(%Pencil{} = pencil, text, %Paper{} = paper) do
    updatedText = paper.text <> text
    paper = %{paper | text: updatedText}
    {:ok, pencil, paper}
  end

  def write(_, _, _) do
    @write_error_parameters
  end
end
