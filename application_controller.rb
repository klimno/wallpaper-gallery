require 'bundler'
require_relative 'models/model.rb'
Bundler.require


class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/imagesort' do
    category = params[:category]
    resolution = params[:resolution]
    sortimages(category, resolution)
    imagenum = 1
    $results.each do |image|
      return "<img src= #{image}>"
    end
    erb :imagesort
  end
  
end