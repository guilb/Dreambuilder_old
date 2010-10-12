class MediaCategory < ActiveRecord::Base
    has_many :medias
    acts_as_list
end
