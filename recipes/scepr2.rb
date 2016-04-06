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



windows_zipfile 'SCEP2012r2' do
  source node['scepr2']['url']
  action :unzip
  not_if {::File.exists?node['scepr2']['file']}
  not_if {reboot_pending?}
end

batch 'Install' do
  code <<-EOH
  c:\\SCEP2012r2\\scepinstall.exe /s
  EOH
  not_if {::File.exists?node['scepr2']['file2']}
  not_if {reboot_pending?}
end
