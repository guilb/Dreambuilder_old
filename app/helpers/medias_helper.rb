module MediasHelper
  def list_medias()
    @medias = Media.find(:all, :order => 'created_at DESC')
    @medias.each do |media|
     media[:extension]=media.file.split('.')[1]
    end
  end
end
