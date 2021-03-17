Rails.application.routes.draw do
  namespace :api do
    get "/holidays" => "holidays#index"
  end
end
