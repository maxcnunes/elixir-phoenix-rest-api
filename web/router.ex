defmodule RestApi.Router do
  use RestApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RestApi do
    pipe_through :api

    resources "/posts", PostController
  end
end
