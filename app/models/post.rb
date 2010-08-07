class Post < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title :string
    body  :text
    timestamps
  end

  searchable do
      text :title, :default_boost => 2
      text :body
   end
  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
