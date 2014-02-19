defmodule Dcca.Session.Ets do
  use GenServer.Behaviour

  # API
  def create(key, data), do: :gen_server.cast(:session_db, {:create, {key, data}})
  def read(key), do: :gen_server.call(:session_db, {:read, key})
  def update(key, data), do: create(key, data)
  def delete(key), do: :gen_server.cast(:session_db, {:delete, key})

  # GenServer Callbacks
  def start_link(_opts) do
     :gen_server.start_link({:local, :session_db}, __MODULE__, [], [])
  end

  def init(_opts) do
    {:ok, :ets.new(:table, [:set])}
  end

  def handle_cast({:create, tup}, table) do
    :ets.insert table, tup
    {:noreply, table}
  end

  def handle_cast({:delete, key}, table) do
    :ets.delete table, key
    {:noreply, table}
  end

  def handle_call({:read, key}, _from, table) do
    case :ets.lookup(table, key) do

      [{key, data}|_] -> 
        {:reply, data, table}

      _ -> 
        {:reply, :no_key, table}

    end
  end

  def handle_call(:get_table_id, _from, table), do: {:reply, table, table}
end
