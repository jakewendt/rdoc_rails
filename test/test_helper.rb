require 'test/unit'
require 'rubygems'
require 'active_support'
require 'active_support/test_case'
require 'active_record'

require 'tasks/testing'

$: << File.expand_path(File.dirname(__FILE__) + "/app/models/" )
%w( user blog post comment ).each{|m| require m }

#ActiveRecord::Base.establish_connection(
#	:adapter => "sqlite3", 
#	:database => ":memory:")
#
#def setup_db
#	ActiveRecord::Schema.define(:version => 1) do
#		create_table :users do |t|
#		end
#		create_table :blogs do |t|
#			t.references :user
#		end
#		create_table :posts do |t|
#			t.references :blog
#		end
#		create_table :comments do |t|
#			t.references :commentable, :polymorphic => true
#		end
#	end
#end
#
#def teardown_db
#	ActiveRecord::Base.connection.tables.each do |table|
#		ActiveRecord::Base.connection.drop_table(table)
#	end
#end


class ActiveSupport::TestCase

end
