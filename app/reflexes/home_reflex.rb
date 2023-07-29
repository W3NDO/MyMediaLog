class HomeReflex < ApplicationReflex
  def test
    media = element.dataset[:media]
    morph "#test", media.gsub("_", " ")
  end

  def showMedia
    media = element.dataset[:media].to_sym
    morph "#focus", render(partial: "home/new_media_button", locals: {media_type: media})
    morph "#container", render(partial: "media/index_media", locals: {medium: media})
  end

  def showNewMediaForm
    id = element.dataset[:id]
    type = element.dataset[:media_type]
    medium = id.to_i == 0 ? Medium.new : Medium.find(id)
    morph "#container", render(partial: "media/form", locals: {medium: medium, media_type: type})
  end

  def updateStatus
    media = Medium.find(element.dataset[:id])
    new_status = element.value
    if media.update(status: new_status)
      show_notification("Updated status for #{media.media_name}")
    else
      show_notification("Failed to update status. Please try again later")
    end
  end

  def updateRating
    media = Medium.find(element.dataset[:id])
    rating = element.value
    if media.update(rating: rating)
      show_notification("Updated rating for #{media.media_name}")
    else
      show_notification("Failed to update rating. Please try again later")
    end
    # morph :nothing
  end
end