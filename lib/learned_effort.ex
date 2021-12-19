defmodule LearnedEffort do
  alias LearnedEffort.Impl.Post

  @type post :: any()

  @spec new_post(post):: post
  defdelegate new_post(post), to: Post

  defdelegate increment_views(post), to: Post

  defdelegate update_status(post, status), to: Post
end
