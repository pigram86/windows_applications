#
# Cookbook Name:: windows_applications
# Recipe:: sysinternals
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
directory 'C:/sysinternals' do
  rights :full_control, "Administrators"
  action :create
end

windows_zipfile 'C:\sysinternals' do
  source node['sysinternals']['url']
  action :unzip
  not_if {::File.exists?('c:\\sysinternals\\PsExec.exe')}
end

windows_path 'C:\sysinternals' do
  action :add
end

windows_auto_run 'BGINFO' do
  program 'C:/Sysinternals/bginfo.exe'
  args    '\'C:/Sysinternals/Config.bgi\' /NOLICPROMPT /TIMER:0'
  not_if  { Registry.value_exists?(AUTO_RUN_KEY, 'BGINFO') }
  action  :create
end

