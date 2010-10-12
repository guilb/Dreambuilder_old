class Floor < ActiveRecord::Base
    has_many :houses
    acts_as_list
    def to_param
      "#{id}-#{title.downcase.gsub(/[^a-z0-9]+/i, '-')}"
    end
end
