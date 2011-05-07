#!/usr/bin/env ruby
#

require 'alsa-rawmidi'

module UniMIDI

  module AlsaRawMIDIAdapter
    
    class Input
      include CongruousApiAdapter::Device
      include CongruousApiAdapter::Input
      DeferToClass = AlsaRawMIDI::Input
    end

    class Output
      include CongruousApiAdapter::Device
      include CongruousApiAdapter::Output
      DeferToClass = AlsaRawMIDI::Output
    end
    
    class Device
      extend CongruousApiAdapter::Device::ClassMethods
      DeferToClass = AlsaRawMIDI::Device
      InputClass = Input
      OutputClass = Output
    end
    
  end

end