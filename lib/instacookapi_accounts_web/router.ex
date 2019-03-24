defmodule InstacookapiAccountsWeb.Router do
  use InstacookapiAccountsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InstacookapiAccountsWeb do
    pipe_through :api
  end
end
