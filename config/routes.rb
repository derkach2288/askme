Rails.application.routes.draw do
  root to: 'questions#index'  # щоб не писати на головній сторінці шлях /questions
  resources:questions
                                    # post '/questions', to: 'questions#create'
                                    # patch '/questions/:id', to: 'questions#update'
                                    # delete '/questions/:id', to: 'questions#destroy'
end
