class SpreadsController < ApplicationController
  before_action :find_spread, only: [:show]
  def index
    @cards = Card.all
    #For now, just get the first spread
    @spread = Spread.first
  end

  def show
    @cards = Card.all
  end

  def find_spread
    @spread = Spread.find_by!(id: params[:id])
  end
end
