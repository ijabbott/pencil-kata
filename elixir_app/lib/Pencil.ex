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

  def write(text, paper) when not is_binary(text) do
    @write_error_parameters
  end

  def write(text, %Paper{} = paper) do
    paper = %{paper | text: text}
    {:ok, paper}
  end

  def write(_, _) do
    @write_error_parameters
  end
end
