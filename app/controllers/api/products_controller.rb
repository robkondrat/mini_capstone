class Api::ProductsController < ApplicationController
  def all_games_action
    @product = Product.first
    render "all_games_view.json.jb"
  end
end
