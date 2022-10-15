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
  
  namespace :public do
    
    
    root to: "homes#top"
    
    resources :customers,only: [:show, :edit]
    resources :arts ,   only: [:new, :index, :show, :edit, :create, :destroy, :update] do
    resources :coments, only: [:create]
    resources :nices,   only: [:creste, :destroy]
    end
  
  end

end
