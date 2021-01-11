defmodule Todo do
  use Application

  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications

  def start(_type, _args) do

    # List all child processes to be supervised
    children = [
      Todo.Server
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Todo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
