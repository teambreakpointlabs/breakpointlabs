Breakpointlabs::Application.routes.draw do

  match "/index" => "pages#index"
  match "/contact" => "pages#contact"
  match "/about" => "pages#about"

  root to: "pages#index"
end
