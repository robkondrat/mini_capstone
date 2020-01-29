class Api::OrdersController < ApplicationController

  def index
    if current_user
      @orders = current_user.orders
      render "index.json.jb"
    else
      render json: {message: "Current user not authorized"}
    end

  end

  def create
    @order = Order.new(
                        user_id: current_user.id,
                        product_id: params[:product_id],
                        quantity: params[:quantity]
                        )

    @order.calculate_totals

    if @order.save
      render "show.json.jb"
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jb'
  end


end
