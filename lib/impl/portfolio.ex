defmodule LearnedEffort.Impl.Portfolio do

  defstruct(
    title: String,
    image: String,
    url: String,
    description: String
  )

  def new_portfolio(portfolio) do
    struct(__MODULE__, portfolio)
  end

  def update_portfolio(portfolio, updates) do
    Map.merge(portfolio, updates)
  end

end
