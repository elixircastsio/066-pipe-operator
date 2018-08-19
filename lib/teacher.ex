defmodule Teacher do

  #id is a lowercase string, "btc"
  def coin_data(id) do
    id
    |> String.upcase()
    |> build_url()
    |> HTTPoison.get!()
    |> Map.get(:body)
    |> Jason.decode!()
  end

  defp build_url(id) do
    "http://coincap.io/page/" <> id
  end
end
