class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    list = List.find_by_id(params[:list_id])
    item = List.item.new(item_params)

    if item.save
      render json: item
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
