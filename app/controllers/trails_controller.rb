# frozen_string_literal: true
class TrailsController < OpenReadController
  before_action :set_trail, only: [:show]

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
