defmodule LearnedEffort.Impl.Post do

  @type state :: :draft | :reviewed | :published


  defstruct(
    title: nil,
    description: String,
    body: nil,
    cta: String,
    status: :draft,
    views: 0,
    keywords: [],
    image: nil
  )

  @opaque t :: %__MODULE__{title: String.t()}

  def new_post(%{title: _title, body: body}=post) when is_binary(body) do
    struct(__MODULE__, post)
      |> parse_body_markdown
  end

  def new_post(%{title: _title}=post), do: struct(__MODULE__, post)

  def new_post(_post), do: {:error, "title is required"}

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
