Qa::Application.routes.draw do

	scope "api" do
    resources :questions, except: [ :new, :edit ], defaults: { format: :json }
    resources :answers, except: [ :new, :edit ], defaults: { format: :json }
  end
  
  root :to => 'home#index'
end
