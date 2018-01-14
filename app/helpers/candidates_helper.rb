module CandidatesHelper
  def image_for(candidate)      
      imgur_url = "https://imgur.com/#{candidate.imgur_id}t.jpg"
      image_tag(imgur_url, alt: candidate.name, class: "imgur")
    end 
  end
