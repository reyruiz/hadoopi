#general
default['hadoop']['maxmem']=512
default['hadoop']['repobase']="http://192.168.1.53:8000/"
default['swapsize']=512

#hue
default['hue']['secretkey']="qpbdxoewsqlkhztybvfidtvwekftusgdlofbcfghaswuicmqp"

#versions
default['hadoop']['version'] = '2.6.4'
default['livy']['version'] = '0.2.0'
default['spark']['version'] = '1.6.2'
default['spark']['hadoop-version'] = '2.6'
default['spark']['assembly-hadoop-version'] = '2.6.0'
default['hue']['version']  = '3.11.0'
default['hbase']['version'] = '1.2.4'
default['pig']['version'] = '0.12.1'
default['hive']['version'] = '1.2.1'
default['oozie']['version'] = '4.3.0'
default['sqoop']['version'] = '1.99.4'
default['sqoopmysql']['version'] = '5.1.40'
default['solr']['version'] = '4.10.4'
default['prometheus']['version'] = '2.2.1'
default['nodeexporter']['version'] = '0.15.2'
default['processexporter']['version'] = '0.1.0'
default['mysqlexporter']['version'] = '0.10.0'
default['jmxexporter']['version'] = '0.3.1'

# if you change the below password remember to change it in the master01-startup.sh script too
default['mysqlexporter']['password'] = 'ersdfsdfsd'

#networking
default['hosts'] =  {
    "master01" => "192.168.1.50",
    "master02" => "192.168.1.39",
    "worker01" => "192.168.1.45",
    "worker02" => "192.168.2.46",
    "worker03" => "192.168.2.32"
}
default['gateway'] = '192.168.1.1'
