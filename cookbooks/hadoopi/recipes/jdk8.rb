execute "update" do
  command "apt-get update"
  user "root"
end

excute "Install JDK" do
  command "sudo apt-get install -y galternatives openjdk-8-jdk"
  user "root"
end

execute "Check Version" do
 command "java -version"
 user "root"
end
