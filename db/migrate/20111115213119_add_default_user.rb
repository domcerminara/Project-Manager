class AddDefaultUser < ActiveRecord::Migration
  def up
  	fred = User.new
  	fred.first_name = "Fred"
  	fred.last_name = "Derf"
  	fred.username = "fred"
  	fred.email = "fred@example.com"
  	fred.password = "secret"
  	fred.password_confirmation = "secret"
  	fred.save!
  end

  def down
  	fred = User.where("username = ?", "fred").first
  	User.delete fred
  end
end
