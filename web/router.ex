defmodule PinterestBackend.Router do
  use PinterestBackend.Web, :router

  # pipeline :browser do
  #   plug :accepts, ["html"]
  #   plug :fetch_session
  #   plug :fetch_flash
  #   plug :protect_from_forgery
  #   plug :put_secure_browser_headers
  # end

  pipeline :api do
    plug :accepts, ["json"]
    plug BasicAuth, username: "api", password: "password"
  end

  # scope "/", PinterestBackend do
  #   pipe_through :browser # Use the default browser stack

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  scope "/api", PinterestBackend do
    pipe_through :api

    resources "/users", UserController, only: [:index, :show]
    post "/users/auth", UserController, :auth
    resources "/pins", PinController
    resources "/comments", CommentController
  end

end
