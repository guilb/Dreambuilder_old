module FloorsHelper
  def list_floors()
    @floors = Floor.find(:all, :order => 'created_at DESC')
  end
end

