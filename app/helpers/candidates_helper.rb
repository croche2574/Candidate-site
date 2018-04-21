module CandidatesHelper
  def image_for_thumb(candidate)      
    imgur_url = "https://imgur.com/#{candidate.imgur_id}t.jpg"
    image_tag(imgur_url, alt: candidate.name, class: "imgur")
  end 

  def image_for(candidate)      
    imgur_url = "https://imgur.com/#{candidate.imgur_id}.jpg"
    image_tag(imgur_url, alt: candidate.name, class: "imgur")
  end 

  def infoText(candidate)
    noResponse = true;
    candidate.attributes.each do |key, value|
      if key.to_s.include?("section")
        if value.present?
          noResponse = false         
        end
      end
    end
    
    if noResponse == false
      "In addition to answering the 20 survey questions, this candidate provided the following elaboration on several progressive issues."
    else
      "Beyond answering “Yes” or “No” to the 20 survey questions, this candidate did not provide elaboration on progressive issues."
    end
  end

end
