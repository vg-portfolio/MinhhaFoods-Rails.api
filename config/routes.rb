# frozen_string_literal: true
Rails.application.routes.draw do
  resources :products
  resources :product_categories
  resources :product_sections, except: [:new, :edit, :update]
  patch '/product_sections' => 'product_sections#update'

  resources :news_posts, except: [:new, :edit]

  resources :news_sections, except: [:new, :edit, :update]
  patch '/news_sections' => 'news_sections#update'

  resources :why_us, except: [:new, :edit, :update]
  patch '/why_us' => 'why_us#update'

  resources :awards, except: [:new, :edit]

  resources :histories, except: [:new, :edit, :update]
  patch '/histories' => 'histories#update'

  resources :about_sections, except: [:new, :edit, :update]
  patch '/about_sections' => 'about_sections#update'

  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
