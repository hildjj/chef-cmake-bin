#
# Cookbook Name:: cmake-bin
# Recipe:: default
#
# Copyright (C) 2015 Joe Hildebrand
#

cache_dir = Chef::Config[:file_cache_path]
cmake_platform = node["cmake-bin"]["platform"]
cmake_arch     = node["cmake-bin"]["architecture"]

package "git" do
  #notifies :run, 'ruby_block[get latest]'
  action :install
end

ruby_block "get latest" do
  block do
    if node["cmake-bin"]["version"] == 'LATEST'
      vers = []
      IO.popen('git ls-remote -t https://github.com/Kitware/CMake.git').each do |line|
        if m = line.match(/^\S+\s+refs\/tags\/v(\d+.\d+.\d+)$/)
          vers.push(Gem::Version.new(m[1]))
        end
      end
      vers.sort()
      node.default["cmake-bin"]["version"] = vers[-1].to_s()
    end
    node.default["cmake-bin"]["sh"] = "cmake-#{node["cmake-bin"]["version"]}-#{cmake_platform}-#{cmake_arch}.sh"
  end
end

remote_file "get sh" do
  path lazy{"#{cache_dir}/#{node["cmake-bin"]["sh"]}"}
  source lazy{"http://www.cmake.org/files/v#{node["cmake-bin"]["version"][/^\d\.\d/, 0]}/#{node["cmake-bin"]["sh"]}"}
end

execute "cmake install" do
  command lazy{"bash #{cache_dir}/#{node["cmake-bin"]["sh"]} --prefix=/usr/local --exclude-subdir"}
  cwd "/tmp"
  creates "/usr/local/bin/cmake"
end
