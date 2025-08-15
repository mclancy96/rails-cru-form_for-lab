Rails.application.routes.draw do
  resources :genre, except: :destroy
  resources :artist, except: :destroy
  resources :song, except: :destroy
end
