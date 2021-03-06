defmodule Watchlist.Router do
  use Watchlist.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Watchlist do
    pipe_through :api

    get "/movies", MovieController, :index
  end

  scope "/api", Watchlist do
    pipe_through :api
  end
end
