defmodule Dcca.Session.Worker do
  use GenFSM.Behaviour

  # API functions
  def start_session({session_supervisor, session_id, imsi}) when is_pid(session_supervisor) do
    IO.puts "#{__MODULE__}.start_session(#{inspect session_supervisor}, #{session_id}, #{imsi})"

    :supervisor.start_child(session_supervisor, [])
  end

  def update_session(ccr_update) do
    
  end

  def terminate_session(ccr_terminate) do
    
  end

  # Supervisor Callbacks

  def start_link do
    IO.puts "#{__MODULE__}.start_link"

    :gen_fsm.start_link(__MODULE__, [], [[]])
  end

  # GenFSM Callbacks

  def init(opts) do
    IO.puts "#{__MODULE__}.init(#{opts})"

    {:ok, :open, []}
  end

  def open(:update, session_state) do
    
  end

  def open(:terminate, session_state) do
    
  end

  # Private Helper Functions
end
