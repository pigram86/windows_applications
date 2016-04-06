#
# Cookbook Name:: windows_applications
# Recipe:: ppt_viewer
#
# Copyright (C) 2013-2105 Todd Pigram
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
# install powerpoint viewer
windows_package "Powerpoint Viewer" do
  source node['ppt']['url']
  options "/quiet"
  installer_type :custom
  action :install
  not_if {::File.exists?(node['ppt']['viewer'])}
  not_if {reboot_pending?}
end



