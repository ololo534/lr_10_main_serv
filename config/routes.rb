Rails.application.routes.draw do
  get 'number/input'
  get 'number/output', :as => 'result'
  root 'number#input'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
