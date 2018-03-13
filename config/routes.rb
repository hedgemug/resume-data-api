Rails.application.routes.draw do
	namespace :v1 do
		resources :students
		resources :capstones
		resources :educations
		resources :skills
		resources :experiences
	end
end
