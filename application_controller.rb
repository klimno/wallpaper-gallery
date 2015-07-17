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
    @categories = params[:category]
    @resolution = params[:resolution]
    @categories.compact
    @resolution.compact
    sortimages(@categories, @resolution)
    imagenum = 1
    @finalimages = []
    $results.each do |image, info|
      @finalimages.push("<div id=image align=center> <a href=#{image} target=_blank> <img src= #{image} width= 160 height= 90></a></div> <p>Category: #{info.at(0).capitalize}. Resolution: #{info.at(1)}</p>")
    end
  @categorynumber = "category"
  @resolutionnumber = "resolution"
  @categories.each do |category|
    category.capitalize!
  end
  if @categories.length == 1
    @categories = @categories[0]
  elsif @categories.length == 2
    @categorynumber = "categories"
    @categories = @categories.join(" and ")
  elsif @categories.length > 2
    @categorynumber = "categories"
    @categories[-1] = "and #{@categories[-1]}"
  @categories = @categories.join(", ")
  end

  if @resolution.length == 1
  @resolution = @resolution[0]
  elsif @resolution.length == 2
    @resolutionnumber = "resolutions"
    @resolution = @resolution.join(" and ")

  elsif @resolution.length > 2
    @resolutionnumber = "resolutions"
    @resolution[-1] = "and #{@resolution[-1]}"
    @resolution = @resolution.join(", ")
  end
    erb :imagesort
  end

end