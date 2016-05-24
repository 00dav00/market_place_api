require 'api_constraints'

# Rails.application.routes.draw do
  # mount SabisuRails::Engine => "/sabisu_rails"
  # devise_for :users
MarketPlaceApi::Application.routes.draw do
  mount SabisuRails::Engine => "/sabisu_rails"
  devise_for :users

  namespace :api, defaults: { format: :json }, constraints: {subdomain: 'api'}, path: '/' do

    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, :only => [:show, :create, :update, :destroy]
    end

  end
end
