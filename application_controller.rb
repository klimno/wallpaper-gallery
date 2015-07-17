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
    categories = params[:category]
    resolution = params[:resolution]
    categories.compact
    resolution.compact
    sortimages(categories, resolution)
    imagenum = 1
    finalimages = []
    $results.each do |image, info|
      finalimages.push("<a href=#{image} target=_blank> <img src= #{image} width= 160 height= 90></a> <p>Category: #{info.at(0).capitalize}. Resolution: #{info.at(1)}</p>")
    end
    return finalimages
    erb :imagesort
  end
  
end