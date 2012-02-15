Rails.application.routes.draw do
  resource  :session,
    :controller => 'clearance/sessions',
    :only       => [:new, :create, :destroy]

  match 'sign_in'  => 'clearance/sessions#new', :as => 'sign_in'
  match 'sign_out' => 'clearance/sessions#destroy', :via => :delete, :as => 'sign_out'
end
