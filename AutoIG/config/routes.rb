Rails.application.routes.draw do
  get '/' => 'instagram#home'
  get '/likes' => 'instagram#likes'
end
