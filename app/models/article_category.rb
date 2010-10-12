class ArticleCategory < ActiveRecord::Base
    has_many :articles
    acts_as_list
end
