
node default{
 file {'/root/Readme.txt':
 ensure => file,
 content => 'This is a test'
 }
}
