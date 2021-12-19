defmodule LearnedEffort.Impl.Post do

  @type state :: :draft | :reviewed | :published


  defstruct(
    title: String,
    description: String,
    body: String,
    cta: String,
    status: :draft,
    views: 0,
    keywords: [],
    image: nil
  )

  def new_post(post) do
    struct(__MODULE__, post)
      |> parse_body_markdown
  end

  def increment_views(post) do
    %{ post | views: post.views + 1 }
  end

  def update_post(post, updates) do
    Map.merge(post, updates)
  end

  defp parse_body_markdown(post) do
    %{post | body: Earmark.as_html! post.body}
  end

end
