#
# Cookbook Name:: windows_applications
# Recipe:: scep
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

batch node['scep']['dir'] do 
  code <<-EOH
  mkdir c:\\scep
  EOH
  not_if {::File.exists?(node['scep']['file'])}
  not_if {reboot_pending?}
end

windows_zipfile node['scep']['zip'] do
  source node['scep']['url']
  action :unzip
  not_if {::File.exists?(node['scep']['file'])}
  not_if {reboot_pending?}
end

batch node['scep']['install'] do
  code <<-EOH
  c:\\scep\\scepinstall.exe /s
  EOH
  not_if {::File.exists?(node['scep']['file'])}
  not_if {reboot_pending?}
end

batch node['scep']['remove'] do
  code <<-EOH
  rmdir /s /q c:\\scep
  EOH
  only_if {::File.exists?(node['scep']['file2'])}
  not_if {reboot_pending?}
end

