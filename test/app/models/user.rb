class User < ActiveRecord::Base
	has_many :blogs
	has_many :posts
	has_many :comments, :as => :commenter
end
