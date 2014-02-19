defmodule Dcca.Db.Worker do
  use GenServer.Behaviour

  # API
  def create(store, key, rec) do

  end
  def read(store, key) do

  end
  def update(store, key, rec) do

  end
  def delete(store, key, rec) do

  end

  # Call backs
  def start_link(opts) do
    :gen_server.start_link({:local, :user_db}, __MODULE__, [opts], [])
  end

  def init(_opts) do
    {:ok, :ok}
  end
end
