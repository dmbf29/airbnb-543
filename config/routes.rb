Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  root to: 'flats#index'
  # 'localhost:3000/flats/145'
  get 'flats/:id', to: 'flats#show', as: :flat
end


# index => all
# show => one thing
