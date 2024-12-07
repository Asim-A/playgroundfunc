defmodule Playgroundfunc do
  @moduledoc """
  Documentation for `Playgroundfunc`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Playgroundfunc.hello()
      :world

  """
  def hello do
    IO.puts("sup")
  end
end

HTTPoison.start()

case HTTPoison.get("https://randomuser.me/api") do
  {:ok, %HTTPoison.Response{body: body, status_code: 200}} ->
    body
    |> Jason.decode!()
    |> case do
      body ->
        body["results"]
        |> Enum.each(fn result ->
          IO.inspect(result["name"])
        end)
    end

  {:error, err} ->
    IO.inspect(err)
end
