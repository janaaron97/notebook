Rails.application.routes.draw do
  get 'comments/create'

  get 'comment/create'

  get 'comments/index'

  get 'comments/show'

  get 'comments/create'

  get 'comments/new'

  get 'comments/update'

  get 'comments/edit'

  get 'comments/destroy'

  devise_for :users
  get 'docs/index'

  get 'welcome/index'

  root 'welcome#index'

  resources :docs do 
    resources :comments
  end
end
