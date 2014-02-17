"""
defrecord Dcca.Peer.ActivePeer, host: nil , session_supervisor: nil, capabilites: nil

defmodule Dcca.Peer.ActivePeerDB do
 use GenServer.Behaviour

 # API
 def start_link(_opts) do
   :gen_server.start_link({:local, :peer_db},__MODULE__, [], [])
 end

 def add_peer(host, session_supervisor, capabilites) do
   :gen_server.cast(:peer_db, {:add, Dcca.Peer.ActivePeer.new(host: host, session_supervisor: session_supervisor, capabilites: capabilites)})
 end
 def list_peers do
   :gen_server.cast(:peer_db, {:list})
 end
 def get_peer_session_supervisor(peer) do
   :gen_server.call(:peer_db, {:get_supervisor, peer})
 end

 # GenServer Callbacks
 def init(_opts) do
   {:ok, HashDict.new}
 end

 def handle_call({:get_supervisor, peer}, _from, peers) do
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
"""
