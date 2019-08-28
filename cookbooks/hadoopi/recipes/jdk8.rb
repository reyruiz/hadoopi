
execute "install dirmng" do
	command "apt-get install dirmngr"
  user "root" 
end

execute "add source" do
  command "echo \"deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list"
  user "root"
end

execute "add source" do
  command "echo \"deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list" 
  user "root" 
end

execute "get key" do
  command "apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886"
  user "root"
end

execute "update" do
  command "apt-get update"
  user "root"
end

excute "Install JDK" do
  command "apt-get install oracle-java8-jdk"
  user "root"
end

execute "Check Version" do
 command "java -version"
 user "root"
end

  
