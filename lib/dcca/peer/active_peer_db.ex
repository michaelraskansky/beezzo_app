defrecord Dcca.Peer.ActivePeer, host: nil , session_supervisor: nil, capabilites: nil

defmodule Dcca.Peer.ActivePeerDB do
 use GenServer.Behaviour
 alias Dcca.Peer.ActivePeer, as: ActivePeer

 # API
 def start_link(_opts) do
   :gen_server.start_link({:local, :peer_db},__MODULE__, [], [])
 end

 def add(res = {:ok, session_supervisor}, capabilites) do
   IO.puts "#{__MODULE__}.add(#{inspect res})"

   {_, host} = capabilites.origin_host
   :gen_server.cast(:peer_db, {:add, ActivePeer.new(host: list_to_atom(host), session_supervisor: session_supervisor, capabilites: capabilites)})
 end
 def add(sup, _), do: raise "#{sup}"

 def list do
   :gen_server.cast(:peer_db, {:list})
 end
 def get({peer, session_id, subscription_id}) do
   IO.puts "#{__MODULE__}.add(#{inspect peer})"

   { 
     :gen_server.call(:peer_db, {:get_supervisor, peer}), 
     peer, 
     session_id, 
     subscription_id 
   }
 end
 def delete(peer) do
   :ok
 end

 # GenServer Callbacks
 def init(_opts) do
   {:ok, HashDict.new}
 end

 def handle_call({:get_supervisor, peer}, _from, peers) do
   IO.puts "#{__MODULE__}.add(#{inspect peer})"
   {:reply, HashDict.fetch!(peers, list_to_atom(peer)).session_supervisor, peers}
 end
 def handle_cast({:add, new_peer}, peers) do
   {:noreply, HashDict.put(peers, new_peer.host, new_peer) }
 end

 def handle_cast({:list}, peers) do
  IO.puts inspect peers 
  {:noreply, peers }
 end
end