Rails.application.routes.draw do
  resource  :session,
    :controller => 'clearance/sessions',
    :only       => [:new, :create, :destroy]

  get 'sign_in'  => 'clearance/sessions#new', :as => 'sign_in'
  delete 'sign_out' => 'clearance/sessions#destroy', :as => 'sign_out'
end
