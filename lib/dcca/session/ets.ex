defmodule Dcca.Session.Ets do
  use GenServer.Behaviour

  # API
  def create(key, data) when is_atom(key), do: :gen_server.cast(:ocs_ets_sessions, {:create, {key, data}})
  def read(key) when is_atom(key), do: :gen_server.call(:ocs_ets_sessions, {:read, key})
  def read(key) when is_list(key), do: :gen_server.call(:ocs_ets_sessions, {:read, list_to_atom(key)})
  def read(key) when is_binary(key), do: :gen_server.call(:ocs_ets_sessions, {:read, binary_to_atom(key)})
  def update(key, data) when is_atom(key), do: create(key, data)
  def delete(key) when is_atom(key), do: :gen_server.cast(:ocs_ets_sessions, {:delete, key})

  # GenServer Callbacks
  def start_link(_opts) do
     :gen_server.start_link({:local, :ocs_ets_sessions}, __MODULE__, [], [])
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
