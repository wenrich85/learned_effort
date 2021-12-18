defmodule LearnedEffort do
  @type state :: :draft | :reviewed | :published
  @type post ::%{
    title: String.t,
    body: String.t,
    cta: String.t,
    status: state,
    views: integer
  }

  @spec new_post(post):: post
  def new_post(post) do

  end


end
