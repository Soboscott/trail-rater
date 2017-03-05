# frozen_string_literal: true
class TrailsController < OpenReadController
  before_action :set_trail, only: [:post, :show, :index]

  # POST /trails
  def create
    @trail = current_user.trails.build(trail_params)

    if @trail.save
      render json: @trail, status: :created
    else
      render json: @trail.errors, status: :unprocessable_entity
    end
  end

  # GET /trails
  def index
    @trails = Trail.all

    render json: @trails
  end

  # GET /trails/1
  def show
    render json: @trail
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_trail
    @trail = Trail.find(params[:id])
  end
end
