defmodule Workspace.ReverseProxy.Clients.Giphy do
  use HTTPoison.Base

  @host Application.compile_env(:workspace, :giphy)[:host]
  @secret Application.compile_env(:workspace, :giphy)[:secret]

  def process_url(url) do
    @host <> url
    #append_secret(@host <> url)
  end

  def process_request_headers(headers) do
    headers
    |> List.keyreplace("accept", 0, {"accept", "application/json"})
    |> List.keydelete("host", 0)
  end

  defp append_secret(url) do
    secret = URI.encode_query(%{secret: @secret})
    url <> "?" <> secret
  end
end
