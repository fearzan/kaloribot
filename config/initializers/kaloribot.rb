require 'programr'

brains = Dir.glob("lib/kaloribot/*")

kaloribot = ProgramR::Facade.new
kaloribot.learn(brains)
