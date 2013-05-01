# Public: Install BTSync.app into /Applications.
#
# Examples
#
#   include btsync
class btsync {
  package { 'btsync':
    provider => 'appdmg',
    source => 'http://btsync.s3-website-us-east-1.amazonaws.com/BTSync.dmg'
  }
}
