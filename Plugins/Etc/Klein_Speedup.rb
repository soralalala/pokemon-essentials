#===============================================================================
# ■ Speed up script by KleinStudio
#   Press F key during debug mode and fly!
# http://kleinstudio.deviantart.com
#===============================================================================
Speed_Up_Framerate=360

module Input
  if !defined?(kleinfast_update)
    class << self
      alias kleinfast_update update
    end
  end

  def self.update
    #if $DEBUG
      if self.pressex?(0x46)
        Graphics.frame_rate=Speed_Up_Framerate if !@setFast
        @setFast=true
      else
        Graphics.frame_rate=120 #if @setFast
        #@setFast=false
      end
    #end
    kleinfast_update
  end
end