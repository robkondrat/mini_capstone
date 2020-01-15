class Api::ProductsController < ApplicationController
  def all_games_action
    @product = Product.all.each do |game|
      game
    end
    render "all_games_view.json.jb"
  end

  def cod_action
    @product = Product.first
    render "cod_view.json.jb"
  end

  def forza_action
    @product = Product.second
    render "forza_view.json.jb"
  end

  def smash_action
    @product = Product.third
    render "smash_view.json.jb"
  end

  def doom_action
    @product = Product.fourth
    render "doom_view.json.jb"
  end

  def party_action
    @product = Product.fifth
    render "party_view.json.jb"
  end

  def gta_action
    @product = Product.last
    render "gta_view.json.jb"
  end

end
