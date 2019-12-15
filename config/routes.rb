# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users

  resources :chats, only: %i[index show]
  resources :contacts, only: %i[index new create destroy]
end
