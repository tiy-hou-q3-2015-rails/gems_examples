class Movie < ActiveRecord::Base
  attachment :photo # gets stored in photo_id
end
