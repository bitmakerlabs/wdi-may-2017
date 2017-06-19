class RestaurantsController < ApplicationController
  def index
  end

  def show

    Rails.logger.info "*** params[:controller] = #{ params[:controller] }"
    Rails.logger.info "*** params[:action] = #{ params[:action] }"
    Rails.logger.info "*** params[:id] = #{ params[:id] }"
    Rails.logger.info "*** params[:lang] = #{ params[:lang] }"

    @lang = params[:lang]
    @country = params[:country]
    @restaurant = Restaurant.find(params[:id])
  end
end

# Querystring
