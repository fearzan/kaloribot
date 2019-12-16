Rails.application.routes.draw do
  get 'ask_kaloribot', to: 'application#ask_kaloribot'

  root to: 'high_voltage/pages#show', id: 'index'
end
