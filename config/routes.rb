# frozen_string_literal: true
Rails.application.routes.draw do

  resources :inquiries
  resources :contacts
###### Product Section #######
  resources :product_sections, except: [:new, :edit] do
    resources :categories
  end

###### Chef Section #######
  resources :chef_sections, except: [:new, :edit, :update] do
    resources :categories
  end
  patch '/chef_sections' => 'chef_sections#update'

###### Categories #######

  resources :categories, except: [:new, :edit] do
    #POST@ /categories/${ID}/products
    # resources :products, only: [:create]
    #POST@ /categories/${ID}/dishes
    # resources :dishes, only: [:create]
  end

###### Dish #######
  resources :dishes do
    #POST@ /dishes/1/descriptions
    resources :descriptions, only: [:create]
    #POST@ /dishes/1/ingredients
    resources :ingredients, only: [:create]
  end

###### polymorphic #######
    resources :ingredients, except: [:create]
    resources :descriptions, except: [:create]
###### END polymorphic #######

###### Products #######
  resources :products do
    #POST@ /products/${ID}/descriptions
    resources :descriptions, only: [:create]
    #POST@ /products/${ID}/ingredients
    resources :ingredients, only: [:create]
  end
###### END products #######

###### About Section #######
  resources :about_sections, except: [:new, :edit]

  resources :histories, except: [:new, :edit]

  resources :why_us, except: [:new, :edit]

  resources :awards, except: [:new, :edit]
###### END About Section #######

###### News Section #######
  resources :news_sections, except: [:new, :edit, :update]
  patch '/news_sections' => 'news_sections#update'

  resources :news_posts, except: [:new, :edit]
###### END News Section #######



  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
