class Api::ListsController < ApiController
  before_action :authenticated?

  def create
    list = List.find_by_id(params[:list_id])

    if list.save
      render json: item
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end

end
