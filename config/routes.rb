Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/edit'
  get '/top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# get '/top' => 'homes#top' だと～～～.com/top のようにパスが1個になり、
#/topにアクセスしたときにtopアクションが実行されるようになる。

# get 'homes/top' => 'homes#top' を省略して get 'homes/top' と書くことができる。
# 　　　　URL　　と　'コントローラ名#アクション名' の形が全く同じになる場合は、
#                    'コントローラ名#アクション名'の部分を省略することができる。
# ～～～.com/homes/top とパスが増える。