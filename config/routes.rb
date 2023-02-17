Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'animation1' => 'animations#index1'
  get 'animation2' => 'animations#index2'
end
