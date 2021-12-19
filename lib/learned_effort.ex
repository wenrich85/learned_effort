defmodule LearnedEffort do
  alias LearnedEffort.Impl.{Post, Portfolio}

  @type post :: any()

  @spec new_post(post):: post
  defdelegate new_post(post), to: Post

  defdelegate increment_views(post), to: Post

  defdelegate update_post(post, updates), to: Post

  defdelegate new_portfolio(portfolio), to: Portfolio

  defdelegate update_portfolio(portfolio, updates), to: Portfolio
end
