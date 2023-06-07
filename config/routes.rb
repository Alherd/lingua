Rails.application.routes.draw do
  get 'lesson' => 'lesson#index'
  get 'login' => 'login#index'
  get 'form' => 'completed_form#index'
  post 'set_completed_fname' => 'completed_form#save_fname'
  post 'clean' => 'completed_form#clean_form'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
