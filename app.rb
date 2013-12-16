require 'sinatra'
require 'wei-backend'

on_location do
  "You location:\n\t lat: #{params[:Latitude]} \n\t long: #{params[:Longitude]}"
end

on_subscribe do
  "您好！谢谢关注公交来了！我们致力于通过公交信息的互动来方便大家的生活。我们的宗旨是“我为人人，人人为我”。您可以在这里分享您了解的公交信息，也可以在这里获取别人分享的信息。建议您打开GPS定位功能，以便我们能更好的为您服务。请发送0获取相关的操作帮助信息"
end

on_text do
  params[:content] =~ /([^\d]*?)([\dkK]+)/
  city_name = $1
  bus_no = $2
end

