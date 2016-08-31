class Challenge < ActiveRecord::Base
    belongs_to :author, class_name: "User"
    belongs_to :rival, class_name: "User" 
end
