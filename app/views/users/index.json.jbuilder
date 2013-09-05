json.array!(@users) do |user|
  json.extract! user, :userType, :name, :email, :web, :phoneNumber, :address, :photo, :bio, :balance, :login, :password, :dateBirth, :receiveNewsletter, :tutorial, :tagline, :ItineraryStatus, :dateCreated, :itinerariesRequested, :itinerariesAccepted, :itinerariesCompleted, :status
  json.url user_url(user, format: :json)
end