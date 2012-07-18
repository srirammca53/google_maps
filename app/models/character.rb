class Character < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :name
acts_as_gmappable

def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  address
end

 def gmaps4rails_infowindow
      # add here whatever html content you desire, it will be displayed when users clicks on the marker
     " <h1>#{name}</h1>"
    end
end
