class Api::HolidaysController < ApplicationController
  def index
    if params[:month]
      response = HTTP.get"https://holidayapi.com/v1/holidays?pretty&key=#{Rails.application.credentials.holidays_api[:api_key]}&country=#{params[:country]}&year=2020&month=#{params[:month]}"
    else
      response = HTTP.get"https://holidayapi.com/v1/holidays?pretty&key=#{Rails.application.credentials.holidays_api[:api_key]}&country=#{params[:country]}&year=2020"
    end

    render json: response.parse
  end
end
