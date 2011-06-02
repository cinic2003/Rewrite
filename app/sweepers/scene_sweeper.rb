class SceneSweeper < ActionController::Caching::Sweeper
  observe Scene
  
  # def after_save(scene)
  #   expire_cache
  # end
  
  def after_update(scene)
    expire_cache
  end
  
  def after_destroy(scene)
    expire_cache
  end
  
  private
  
  def expire_cache
    logger.info("======cache has reset======")
    expire_action(:controller => 'interface/scenes', :action => 'list', :format => :xml)
  end
end