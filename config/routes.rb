Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  post '/mail/contact_us', to: 'emails#contact_us'
end
