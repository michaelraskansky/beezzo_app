defmodule Dcca.Session.Worker do
  use GenFSM.Behaviour

  # API functions
  def start_session_fsm({session_supervisor, peer, session_id, imsi}) when is_pid(session_supervisor) do
    IO.puts "#{__MODULE__}.start_session(#{inspect session_supervisor}, #{session_id}, #{imsi})"

    {:ok, pid} = :supervisor.start_child(session_supervisor, [])
    Dcca.Session.Ets.create(session_id, {imsi, peer, session_id, pid})
    {:ok, {imsi, peer, session_id, pid}}
  end

  def initial_request(session_id, msg) do
    {_, _, _, pid} = Dcca.Session.Ets.read session_id
    :gen_fsm.sync_send_event(pid, :initial)
  end
  def update_request(session_id, msg) do
  end
  def terminate_request(session_id, msg) do
  end

  # Supervisor Callbacks

  def start_link do
    IO.puts "#{__MODULE__}.start_link"

    :gen_fsm.start_link(__MODULE__, [], [[]])
  end

  # GenFSM Callbacks

  def init(opts) do
    IO.puts "#{__MODULE__}.init(#{opts})"

    # Get Data From DB
    {:ok, :open, {get_tcc, get_quotas}}
  end

  def open(:initial, _, session_state), do: {:reply, session_state, :open, session_state }

  def open(:update, session_state) do
    
  end

  def open(:terminate, session_state) do
    
  end

  # Private Helper Functions
  defp get_quotas do
    allowed = :"Multiple-Services-Credit-Control".new(
      "Rating-Group": 1,
      "Validity-Time": 3600,
      "Result-Code": 2001,
      "Granted-Service-Unit": :"Granted-Service-Unit".new("CC-Total-Octets": 52428800),
      "Service-Identifier": 1,
       "Used-Service-Unit": 0
      )
    [allowed]
  end
  defp get_tcc, do: 3600
end
