#
# Cookbook Name:: windows_applications
# Recipe:: office2013sp1
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

windows_package "Service Pack 1 for Microsoft Office 2013 (KB2817430) 64-Bit Edition" do
  source node['off']['sp1']
  options "/quiet /norestart"
  installer_type :custom
  action :install
  not_if {reboot_pending?}
end

windows_reboot 30 do
  reason 'A System Restart has been requested. Rebooting now..'
  only_if {reboot_pending?}
end