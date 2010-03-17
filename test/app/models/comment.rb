class Comment < ActiveRecord::Base
	belongs_to :commenter, 
		:class_name => "User",
		:counter_cache => true
	belongs_to :commentable, 
		:polymorphic => true,
		:counter_cache => true
end
