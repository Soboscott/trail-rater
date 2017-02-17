# frozen_string_literal: true

class TrailController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  def index
    @trails = Trail.all
    render json: @trails
  end

  def show
    render json: @trail
  end

  def destroy
    @trail.destroy
    head :no_content
  end

  def update
    @trail.update(trail_params)
    head :no_content
  end

  def create
    @trail = Trail.new(article_params)

    if @trail.save
      render json: @trail, status: :created
    else
      render json: @trail.errors, status: :unprocessable_entity
    end
  end

  private

  def set_article
    @trail = Trail.find(params[:id])
  end

  def trail_params
    params.require(:trail).permit(:title, :content)
  end
end
