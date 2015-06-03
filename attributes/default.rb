# have to defer getting latest version until after git is installed
default["cmake-bin"]["version"] = "LATEST"

case node['kernel']['machine']
when "amd64", "x86_64"
  default["cmake-bin"]["architecture"] = "x86_64"
when "i386", "i686"
  if node["platform"] == "mac_os_x"
    default["cmake-bin"]["architecture"] = "universal"
  else
    default["cmake-bin"]["architecture"] = "i386"
  end
end

case node["platform"]
when "debian", "ubuntu", "redhat", "centos", "fedora"
  default["cmake-bin"]["platform"] = "Linux"
end
