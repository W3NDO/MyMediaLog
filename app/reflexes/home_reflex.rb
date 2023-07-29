class HomeReflex < ApplicationReflex
  def test
    media = element.dataset[:media]
    morph "#test", media.gsub("_", " ")
  end

  def showMedia
    media = element.dataset[:media].to_sym
    morph "#container", render(partial: "media/index_media", locals: {medium: media})
  end

  def showNewMediaForm
    medium = Medium.new
    morph "#container", render(partial: "media/form", locals: {medium: medium})
  end
end