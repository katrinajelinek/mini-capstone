Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/product_path" => "products#product_action"
    get "/all_products_path" => "products#all_products_action"
    get "/all_products_path" => "products#all_products_action"
  end
end
