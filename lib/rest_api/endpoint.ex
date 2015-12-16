defmodule RestApi.Endpoint do
  use Phoenix.Endpoint, otp_app: :rest_api

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_rest_api_key",
    signing_salt: "2aIUFWNY"

  plug RestApi.Router
end
