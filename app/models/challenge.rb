class Challenge < ActiveRecord::Base
    belongs_to :author, class_name: "User" #association to author. Enables @challenge.author (model) accessor
    belongs_to :rival, class_name: "User"  #association to author. Enables @challenge.rival (model) accessor
end
