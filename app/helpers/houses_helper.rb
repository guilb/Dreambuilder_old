module HousesHelper
  def list_houses()
    @houses = House.find(:all, :order => 'created_at DESC')
  end
  def list_floor_houses(floor)
     @houses = House.find(:all, :conditions => ["floor_id = ?", floor])
  end
end
