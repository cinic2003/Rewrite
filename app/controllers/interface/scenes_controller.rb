
class Interface::ScenesController < InterfaceController
  before_filter :force_xml
  
  caches_action :list, :expires_in => 1.minutes
  cache_sweeper :scene_sweeper
  
  def list
    @scenes = Scene.all
  end
  
  def add
    render( :xml => "Create Scene faild") && return if params[:title].blank?
    @scene = Scene.new(:title => params[:title])
    if @scene.save
      render :xml => @scene.to_xml
    end
  end
  
  def change
    render( :xml => "No find scene") && return if params[:id].blank?
    @scene = Scene.find params[:id]
    result =  @scene.update_attribute(:title, params[:title]) ? 'success' : 'failed'
    render :text => result
  end
  
  def remove
    @scene = Scene.find params[:id]
    if @scene && @scene.destroy
      render :xml => @scene.to_xml
    else
      render :xml => 'Destroy the scene ID faild'
    end
  end
  
  private
  
  def force_xml
    request.format = :xml
  end
  
end
