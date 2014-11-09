require 'rubygems'
require 'sinatra'
require 'redis'

set :bind, '0.0.0.0'
set :lock, 'true'
set :port, 4567

get '/new_greeting/:greeting' do
  hostname = ENV['HOSTNAME'] 
  redis = Redis.new(:host => "172.16.2.87", :port => 6379, :db => 15)
  str = params[:greeting]
  redis.set("greeting", "#{str}")
  "Set new greeting to #{str} from #{hostname}\n"
end

get '/greeting' do
  hostname = ENV['HOSTNAME'] 
  redis = Redis.new(:host => "172.16.2.87", :port => 6379, :db => 15)
  ret = redis.get("greeting")
  "Hello: #{ret} from #{hostname}\n"
end

get '/sup' do
  "Sup Dood?"
end
