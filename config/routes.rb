Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
	namespace :v1 do
		resources :students
		resources :capstones
		resources :educations
		resources :skills
		resources :experiences
	end
end
