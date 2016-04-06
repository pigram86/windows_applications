#
# Cookbook Name:: windows_applications
# Recipe:: acrobat_reader
#
# Copyright (C) 2013-2015 Todd Pigram
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
# Install acrobat Reader 11.0
windows_package "Acrobat Reader XI" do
  source node['acrobat']['install_url']
  action :install
  not_if {::File.exists?(node['acrobat']['acrord'])}
  not_if {reboot_pending?}
end

# disable acrobat update
registry_key node['acrobat']['featurelockdown'] do
  values [{
    :name => "bUpdater",
    :type => :dword,
    :data => 00000000
    }]
  recursive true
  action :create
end

# accept eula
registry_key node['acrobat']['eula_1'] do
  values [{
    :name => "EULA",
    :type => :dword,
    :data => 00000001
    }]
  recursive true
  action :create
end

# accept eula
registry_key node['acrobat']['eula_2'] do
  values [{
    :name => "EULA",
    :type => :dword,
    :data => 00000001
    }]
  recursive true
  action :create
end

# enable bho
#registry_key node['acrobat']['bho'] do
#  values [{
#    :name => "NoExplorer",
#   :type => :dword,
#    :data => 00000000
#    }]
#  recursive true
#  action :create_if_missing
#end

