class HomeReflex < ApplicationReflex
  def test
    media = element.dataset[:media]
    morph "#test", media.gsub("_", " ")
  end
end