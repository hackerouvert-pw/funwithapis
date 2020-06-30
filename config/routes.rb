# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'start', to: 'cow#hello'
  post 'say', to: 'cow#say'
  post 'hello', to: 'cow#hello'
  get 'tell', to: 'cow#tell'
  post 'tell', to: 'cow#tell_post'
  get 'golden_door', to: 'cow#golden_door'
  get 'library', to: 'cow#library'
  post 'library', to: 'cow#read_book'
  put 'book', to: 'cow#book'
end
