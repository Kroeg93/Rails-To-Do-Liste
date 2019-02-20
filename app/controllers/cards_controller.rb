class CardsController < ApplicationController

def create
  @list = List.find(params[:list_id])
  @card = @list.cards.create(card_params)
  redirect_to list_path(@list)
end

def destroy
  @list = List.find(params[:list_id])
  @card = @list.card.find(params[:id])
  @card.destroy
  redirect_to lists_path(@list)
end

  private

  def card_params
    params.require(:card).permit(:title)
  end

end
