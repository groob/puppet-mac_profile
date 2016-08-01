# params for mac_profile
class mac_profile::params (
  $profile_payload_org        = 'My Company',
  $profile_identifier_prefix  = 'com.mycompany'
) {


  $desktop_background_path = $facts['os']['macosx']['version']['major'] ? {
    '10.11' => '/Library/Desktop Pictures/El Capitan.jpg',
    '10.10' => '/Library/Desktop Pictures/Yosemite.jpg',
    default => '/Library/Desktop Pictures/Lion.jpg',
  }
}
