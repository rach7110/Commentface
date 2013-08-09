CommentFace::Application.routes.draw do

  resources :comments, :except => [:show, :new, :edit] do
    post :upvote, :on => :member
  end
  root :to => 'comments#index'
end
