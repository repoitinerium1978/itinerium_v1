class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userType
      t.string :name
      t.string :email
      t.string :web
      t.string :phoneNumber
      t.text :address
      t.string :photo
      t.text :bio
      t.string :balance
      t.string :login
      t.string :password
      t.date :dateBirth
      t.integer :receiveNewsletter
      t.integer :tutorial
      t.text :tagline
      t.integer :ItineraryStatus
      t.datetime :dateCreated
      t.integer :itinerariesRequested
      t.integer :itinerariesAccepted
      t.integer :itinerariesCompleted
      t.string :status

      t.timestamps
    end
  end
end
