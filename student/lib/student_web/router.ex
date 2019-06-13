defmodule StudentWeb.Router do
  use StudentWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", StudentWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/student", StudentController, :index
    get "student/:messenger", StudentController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", StudentWeb do
  #   pipe_through :api
  # end
end
