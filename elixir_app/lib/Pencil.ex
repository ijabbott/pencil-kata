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

  @write_error_parameters {:error, "Pencil.write accepts the following parameters: write(binaryInput, %Paper{})"}

  def write(text, _) when not is_binary(text) do
    @write_error_parameters
  end

  def write(text, %Paper{} = paper) do
    updatedText = paper.text <> text
    paper = %{paper | text: updatedText}
    {:ok, paper}
  end

  def write(_, _) do
    @write_error_parameters
  end
end
