Rails.application.routes.draw do
  get 'classes/index'

  root 'classes#index'

  get '/courses/:course_id' => 'courses#index', as: 'courses'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
