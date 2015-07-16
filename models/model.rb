
$images = {"http://i.imgur.com/4zBWpvc.jpg" => ["space", "1280x720"], "http://i.imgur.com/LzQrCUV.jpg" => ["space", "1366x768"], "http://i.imgur.com/05APJl1.jpg" => ["space", "1600x900"], "http://i.imgur.com/p9zksTz.jpg" => ["space","1920x1080"], "http://i.imgur.com/9loXstL.jpg" => ["landscape", "1280x720"], "http://i.imgur.com/2H1SOy8.jpg" => ["landscape", "1366x768"],  "http://i.imgur.com/mREpj7L.jpg" => ["landscape", "1600x900"], "http://i.imgur.com/jsyBkUg.jpg" => ["landscape", "1920x1080"], "http://i.imgur.com/eRLWDAK.jpg" => ["animals", "1280x720"], "http://i.imgur.com/a1gToAC.jpg" => ["animals", "1366x768"], "http://i.imgur.com/ZucjpCv.jpg" => ["animals", "1600x900"], "http://i.imgur.com/mQh3sGI.jpg" => ["animals", "1920x1080"], "http://i.imgur.com/YkSi8vL.jpg" => ["cars", "1280x720"], "http://i.imgur.com/wozvsqT.jpg" => ["cars", "1366x768"], "http://i.imgur.com/aKnqKRu.jpg" => ["cars", "1600x900"], "http://i.imgur.com/rCLjc8T.jpg" => ["cars", "1920x1080"]  
  }

def sortimages(category, resolution)
  $results = {}
  $images.each do |key, value|
    sharedcategory = value & category
    #puts sharedcategory
    sharedresolution = value & resolution
    #puts sharedresolution.is_a?(Array)
    puts sharedcategory.at(0)
    puts sharedresolution.at(0)
    if sharedcategory.at(0) != nil and sharedresolution.at(0) != nil
      $results[key] = value
    end
  end
end