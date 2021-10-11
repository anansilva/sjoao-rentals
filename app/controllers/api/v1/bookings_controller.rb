class Api::V1::BookingsController < ApplicationController
  def index
    render json: Booking.all
  end

  def show
    render json: Booking.find(params[:id])
  end

  def create
    booking = Booking.create(booking_params)

    render json: booking, status: 201
  end

  private

  def booking_params
    params
      .require(:booking)
      .permit(:check_in, :check_out, :number_of_adults, :number_of_children)
  end
end
