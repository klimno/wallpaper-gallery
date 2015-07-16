
$images = {"http://i.imgur.com/4zBWpvc.jpg" => ["space", "1280x720"], "http://i.imgur.com/LzQrCUV.jpg" => ["space", "1366x768"], "http://i.imgur.com/05APJl1.jpg" => ["space", "1600x900"], "http://i.imgur.com/p9zksTz.jpg" => ["space","1920x1080"], "http://i.imgur.com/9loXstL.jpg" => ["landscape", "1280x720"], "http://i.imgur.com/2H1SOy8.jpg" => ["landscape", "1366x768"],  "http://i.imgur.com/mREpj7L.jpg" => ["landscape", "1600x900"], "http://i.imgur.com/jsyBkUg.jpg" => ["landscape", "1920x1080"], "http://i.imgur.com/eRLWDAK.jpg" => ["animals", "1280x720"], "http://i.imgur.com/a1gToAC.jpg" => ["animals", "1366x768"], "http://i.imgur.com/mQh3sGI.jpg" => ["animals", "1920x1080"]
  }

def sortimages(category, resolution)
  $results = []
  $images.each do |key, value|
    if value[0] == category and value[1] == resolution
      $results.push(key)
    end
  end
end
      