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

  enum rating: {
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5
  }
end
