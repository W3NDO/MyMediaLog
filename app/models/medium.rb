class Medium < ApplicationRecord
  belongs_to :user
  
  enum media_type: {
    podcast: 0,
    book: 1,
    youtubeVideo: 2,
    tvShow: 3,
    movies: 4, 
    music: 5
  }

  enum status: {
    pending: 0,
    ongoing: 1,
    finished: 2
  }
end
