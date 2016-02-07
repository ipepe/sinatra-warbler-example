require 'sinatra'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(
    adapter: "mysql",
    host: "192.168.0.10",
    username: "webapp",
    password: "Password1",
    database: "webapp"
)

class Post < ActiveRecord::Base; end

unless ActiveRecord::Base.connection.table_exists?(:posts)
  ActiveRecord::Migration.class_eval do
    create_table :posts do |t|
      t.string  :title
      t.text :body
    end
  end
end

get '/*' do
  "Hello World! From Sinatra! Im running on platform: #{RUBY_PLATFORM}. Im running MySql with ActiveRecord, my test databse has #{Post.count} records."
end