#
# Cookbook Name:: windows_applications
# Recipe:: default
#
# Copyright (C) 2015 Todd Pigram
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Java 6u3
default['java_6u3']['url'] = "https://dl.dropboxusercontent.com/u/36379525/jre-6u3-windows-i586-p-s.exe"
default['java_6u3']['policy'] = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\JavaSoft\\Java Update\\Policy"
default['java_6u3']['file'] = "C:/Program Files (x86)/Java/jre6/bin/java.exe"

# Java 6u45
default['java_6u45']['x64'] = "https://dl.dropboxusercontent.com/u/36379525/jre-6u45-windows-x64.exe"
default['java_6u45']['x86'] = "https://dl.dropboxusercontent.com/u/36379525/jre-6u45-windows-i586.exe"
default['java64']['policy'] = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\JavaSoft\\Java Update\\Policy"
default['java6_64']['file'] = "C:/Program Files/Java/jre6/bin/java.exe"
default['java6_86']['file'] = "C:/Program Files (x86)/Java/jre6/bin/java.exe"

# Java 7u67
default['java_7u67']['x64'] = "https://dl.dropboxusercontent.com/u/36379525/jre-7u67-windows-x64.exe"
default['java_7u67']['x86'] = "https://dl.dropboxusercontent.com/u/36379525/jre-7u67-windows-i586.exe"
default['java64']['policy'] = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\JavaSoft\\Java Update\\Policy"
default['java7_64']['file'] = "C:\\Program Files\\Java\\jre7\\bin\\java.exe"
default['java']['policy'] = "HKEY_LOCAL_MACHINE\\SOFTWARE\\JavaSoft\\Java Update\\Policy"
default['java7_86']['file'] = "C:\\Program Files (x86)\\Java\\jre7\\bin\\java.exe"

# Java 7u21
default['java_7u21']['x64'] = "https://dl.dropboxusercontent.com/u/36379525/jre-7u21-windows-x64.exe"
default['java_7u21']['x86'] = "https://dl.dropboxusercontent.com/u/36379525/jre-7u21-windows-i586.exe"
default['java64']['policy'] = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\JavaSoft\\Java Update\\Policy"
default['java7_64']['file'] = "C:\\Program Files\\Java\\jre7\\bin\\java.exe"
default['java']['policy'] = "HKEY_LOCAL_MACHINE\\SOFTWARE\\JavaSoft\\Java Update\\Policy"
default['java7_86']['file'] = "C:\\Program Files (x86)\\Java\\jre7\\bin\\java.exe"

# Java 7u72
default['java_7u72']['x64'] = "https://dl.dropboxusercontent.com/u/36379525/jre-7u72-windows-x64.exe"
default['java_7u72']['x86'] = "https://dl.dropboxusercontent.com/u/36379525/jre-7u72-windows-i586.exe"
default['java64']['policy'] = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\JavaSoft\\Java Update\\Policy"
default['java7_64']['file'] = "C:\\Program Files\\Java\\jre7\\bin\\java.exe"
default['java']['policy'] = "HKEY_LOCAL_MACHINE\\SOFTWARE\\JavaSoft\\Java Update\\Policy"
default['java7_86']['file'] = "C:\\Program Files (x86)\\Java\\jre7\\bin\\java.exe"

# Java 7u9
default['jre']['url'] = "https://dl.dropboxusercontent.com/u/36379525/jre-7u9-windows-i586.exe"
default['jre']['file'] = "C:\\Program Files\\Java\\jre7\\bin\\java.exe"

# 7zip
default['tool']['url'] = "http://www.7-zip.org/a/7z920-x64.msi"
default['tool']['file'] = "C:/Program Files/7-zip/7z.exe"

# Acrobat Reader
default['acrobat']['install_url'] = "https://dl.dropboxusercontent.com/u/36379525/AdbeRdr11000_en_US.msi"
default['acrobat']['featurelockdown'] = "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Policies\\Adobe\\Acrobat Reader\\11.0\\FeatureLockDown"
default['acrobat']['acrord'] = "C:/Program Files (x86)/Adobe/Reader 11.0/Reader/AcroRd32.exe"
default['acrobat']['eula_1']= "HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Adobe\\Acrobat Reader\\11.0\\AdobeViewer"
default['acrobat']['eula_2'] = "HKEY_CURRENT_USER\\Software\\Adobe\\Acrobat Reader\\11.0\\AdobeViewer"
default['acrobat']['bho'] = " HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\explorer\\Browser Helper Objects\\{18DF081C-E8AD-4283-A596-FA578C2EBDC3}"

# Chrome
default['chrome']['url'] = "https://dl.google.com/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi"
default['chrome']['file'] = "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe"

# Excel Viewer
default['excel']['url'] = "https://dl.dropboxusercontent.com/u/36379525/ExcelViewer.exe"
default['excel']['xlview'] = "C:/Program Files (x86)/Microsoft Office/Office12/XLVIEW.exe"

# Filezilla
default['filezilla']['url'] = "https://dl.dropboxusercontent.com/u/36379525/FileZilla_3.9.0.5_win32-setup.exe"
default['filezilla']['file'] = "C:/Program Files (x86)/FileZilla FTP Client/filezilla.exe"

# SCEP
default['scep']['url'] = "https://dl.dropboxusercontent.com/u/36379525/SCEP.zip"
default['scep']['file'] = "C:/Program Files/Microsoft Security Client"
default['scep']['dir'] = "make dir"
default['scep']['zip'] = "c:/scep"
default['scep']['install'] = "install"
default['scep']['file2'] = "C:/secp"
default['scep']['remove'] = "remove dir"
default['scepr2']['url'] ="https://dl.dropboxusercontent.com/u/36379525/SCEP2012r2/scep2012r2.zip"
default['scepr2']['file'] = "c:/scep2012r2"
default['scepr2']['file2'] = "c:/Program Files/Microsoft Security Client"


# sysinternals
default['sysinternals']['url'] = "http://download.sysinternals.com/files/SysinternalsSuite.zip"

# Visio2013
default['visio']['url'] = "https://dl.dropboxusercontent.com/u/36379525/Visio2013.zip"
default['visio']['dir'] = "c:\\visio2013"

# Office2013
default['off']['url'] = "https://dl.dropboxusercontent.com/u/36379525/off_13_x64.zip"
default['off']['winword'] = "C:/Program Files/Microsoft Office/Office15/WINWORD.exe"
default['off']['temp'] = "C:/temp"
default['off']['sp1'] = "https://dl.dropboxusercontent.com/u/36379525/proplussp2013-kb2817430-fullfile-x64-en-us.exe"
default['sp1']['reg'] = "HKLM\\Software\\Microsoft\\CurrentVersion\\Uninstall\\{90150000-0018-0409-1000-0000000FF1CE}_Office15.PROPLUS_{6227D1A8-9E29-463F-8DE6-1CFA1FFF8ECE}"
default['sp1']['file'] = "c:/chef/cache/proplussp2013-kb2817430-fullfile-x64-en-us.exe"

# Excel Viewer
default['excel']['url'] = "https://dl.dropboxusercontent.com/u/36379525/ExcelViewer.exe"
default['excel']['xlview'] = "C:/Program Files (x86)/Microsoft Office/Office12/XLVIEW.exe"

# PowerPoint Viewer
default['ppt']['url'] = "https://dl.dropboxusercontent.com/u/36379525/PowerPointViewer.exe"
default['ppt']['viewer'] = "C:/Program Files (x86)/Microsoft Office/Office14/PPTVIEW.exe"

# word Viewer
default[:wv][:view] = "word Viewer"
default[:wv][:url] = "https://dl.dropboxusercontent.com/u/36379525/wordview_en-us.exe"
default[:wv][:file] = "C:/Program Files (x86)/Microsoft Office/Office11/WORDVIEW.exe"

# Firefox
default['firefox']['url'] = "http://hicap.frontmotion.com.s3.amazonaws.com/Firefox/Firefox-24.0/Firefox-24.0-en-US.msi"

# Flash
default[:flash][:url] = "https://dl.dropboxusercontent.com/u/36379525/install_flash_player_11_plugin.msi"

# Systrack
default['runtime']['url'] = "https://dl.dropboxusercontent.com/u/36379525/AgentRunTime.msi"
default['management']['url'] = "https://dl.dropboxusercontent.com/u/36379525/Systems%20Management%20Agent_x32.msi"
default['run']['file'] = "C:/Program Files (x86)/SysTrack/LsiAgent"
default['man']['file'] = "C:/Program Files (x86)/SysTrack/LsiAgent/Utilities"

# Ultradefrag
default['defrag']['url'] = "https://dl.dropboxusercontent.com/u/36379525/ultradefrag-6.0.4.bin.amd64.exe"

# Silverlight
default['silver']['url'] = "https://dl.dropboxusercontent.com/u/36379525/Silverlight_x64.exe"

# Putty
default['putty']['url'] = "http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.66-installer.exe"
default['putty']['file'] = "C:/Program Files (x86)/PuTTY/putty.exe"

# Notepad ++
default['notepad']['url'] = "http://download.tuxfamily.org/notepadplus/6.5.2/npp.6.5.2.Installer.exe"

#choco_apps
default['chocolatey-installer']['packages'] = %w{ javaruntime }
