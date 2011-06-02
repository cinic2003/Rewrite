xml.instruct! :xml, :version=>"1.0" 

xml.tag! :scenes do
  
  @scenes.each do |scene|
  
    xml.tag! :scene, :id => scene.id, :title => scene.title
  
  end

end

# xml.tag! :size, :count => @scenes.size