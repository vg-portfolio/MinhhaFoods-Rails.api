# frozen_string_literal: true
Rails.application.routes.draw do
  resources :why_us, except: [:new, :edit]
  resources :awards, except: [:new, :edit]
  resources :histories, except: [:new, :edit]

  resources :about_sections, except: [:new, :edit, :update]
  patch '/about_sections' => 'about_sections#update'
  
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
