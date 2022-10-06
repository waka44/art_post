Rails.application.routes.draw do

 
# 顧客用
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

namespace :admin do
  
  get '/' => "homes#top"
  
end

scope module: :public do
  
  
  root to: "homes#top"
  
  resources :arts ,   only: [:new, :index, :show, :edit, :creste, :destroy, :update] do
  resources :coments, only: [:create, :destroy]
  resources :nices,   only: [:creste, :destroy]
end

end

end
