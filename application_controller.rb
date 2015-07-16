require 'bundler'
require_relative 'models/model.rb'
Bundler.require


class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end
  
  post '/imagesort' do
    $categories = params[:category]
    $resolution = params[:resolution]
    $categories.compact
    $resolution.compact
    sortimages($categories, $resolution)
    imagenum = 1
    $results.each do |image, key|
      return "<img src= #{image}>"
    end
    erb :imagesort
  end
  
end