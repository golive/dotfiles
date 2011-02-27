require 'geoffrey'

# The original SIMBL
Geoffrey.package do
  url 'http://www.culater.net/dl/files/SIMBL-0.9.7a.zip'
  options :sudo => true, :unless => Proc.new{ File.exists?("/Library/LaunchAgents/net.culater.SIMBL.Agent.plist") }
end

# And now the two bundles I like to use
# Blurminal, makes terminal's background blurry :D
Geoffrey.package do
  url "https://github.com/mrsimo/Blurminal/raw/master/Blurminal.bundle.zip"
  options :file => "Blurminal.bundle"

  def install
    plugins_dir = "#{ENV["HOME"]}/Library/Application Support/SIMBL/Plugins"
    FileUtils.mkdir_p plugins_dir
    FileUtils.mv file_to_install, plugins_dir, :force => true
  end
end

# Tabswitching, lets you switch tabs with cmd+number
Geoffrey.package do
  url "https://github.com/dabeeeenster/terminaltabswitching/raw/master/TerminalTabSwitching.bundle.zip"
  options :file => "TerminalTabSwitching.bundle"

  def install
    plugins_dir = "#{ENV["HOME"]}/Library/Application Support/SIMBL/Plugins"
    FileUtils.mkdir_p plugins_dir
    FileUtils.mv file_to_install, plugins_dir, :force => true
  end

end

# Configure the Terminal. This way it'll probably restart it anyway
# The idea is to set all the options as I like them for the Terminal.app
# * TODO: Set some annoying key fixes, like being able to delete and <C-l> <C-R>
Geoffrey.plist do
  file :terminal
  affects "/Applications/Utilities/Terminal.app"

  options["Default Window Settings"] = "Pro"
  options["Startup Window Settings"] = "Pro"
  options["HasMigratedDefaults"] = true
  options["Window Settings"]["Pro"]["Font"] = "bplist00\xD4\x01\x02\x03\x04\x05\x06\x18\x19X$versionX$objectsY$archiverT$top\x12\x00\x01\x86\xA0\xA4\a\b\x11\x12U$null\xD4\t\n\v\f\r\x0E\x0F\x10V$classVNSNameVNSSizeXNSfFlags\x80\x03\x80\x02\#@,\x00\x00\x00\x00\x00\x00\x10\x10]Menlo-Regular\xD2\x13\x14\x15\x16Z$classnameX$classesVNSFont\xA2\x15\x17XNSObject_\x10\x0FNSKeyedArchiver\xD1\x1A\eTroot\x80\x01\b\x11\x1A#-27<BKRY`ikmvx\x86\x8B\x96\x9F\xA6\xA9\xB2\xC4\xC7\xCC\x00\x00\x00\x00\x00\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x1C\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xCE"
  options["Window Settings"]["Pro"]["Font"].blob = true
  options["Window Settings"]["Pro"]["columnCount"] = 520
  options["Window Settings"]["Pro"]["rowCount"]    = 100
  options["Window Settings"]["Pro"]["keyMapBoundKeys"] = {"$F709"=>"\e[26~", "F70A"=>"\e[18~", "$F70A"=>"\e[28~", "F717"=>"\e[34~", "F72C"=>"scrollPageUp:", "~F70D"=>"\e[28~", "$F70E"=>"\e[33~", "$F72C"=>"\e[5~", "F70B"=>"\e[19~", "F710"=>"\e[25~", "^F703"=>"\ef", "~F705"=>"\e[18~", "~F712"=>"\e[34~", "F72D"=>"scrollPageDown:", "~F709"=>"\e[23~", "F711"=>"\e[26~", "F704"=>"\eOP", "F70C"=>"\e[20~", "~F70A"=>"\e[24~", "$F70B"=>"\e[29~", "~F70E"=>"\e[29~", "$F70F"=>"\e[34~", "$F72D"=>"\e[6~", "F712"=>"\e[28~", "F70D"=>"\e[21~", "F705"=>"\eOQ", "~F706"=>"\e[19~", "F713"=>"\e[29~", "F70E"=>"\e[23~", "F706"=>"\eOR", "$F729"=>"\e[H", "~F70B"=>"\e[25~", "$F70C"=>"\e[31~", "F728"=>"\x04", "~F70F"=>"\e[31~", "F707"=>"\eOS", "~F710"=>"\e[32~", "F70F"=>"\e[24~", "F714"=>"\e[31~", "~F707"=>"\e[20~", "$F708"=>"\e[25~", "F729"=>"scrollToBeginningOfDocument:", "F715"=>"\e[32~", "F708"=>"\e[15~", "~F70C"=>"\e[26~", "$F70D"=>"\e[22~", "$F72B"=>"\e[F", "^F702"=>"\eb", "~F704"=>"\e[17~", "F716"=>"\e[33~", "F709"=>"\e[17~", "F72B"=>"scrollToEndOfDocument:", "~F711"=>"\e[33~", "~F708"=>"\e[21~"}
end
