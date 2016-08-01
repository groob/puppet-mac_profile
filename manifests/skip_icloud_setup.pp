# skip default iCloud Setup which comes up on user login
class mac_profile::skip_icloud_setup (
  $ensure = 'present'
) inherits mac_profile {

  mac_profiles_handler::manage { "${profile_identifier_prefix}.icloud_setup":
    ensure      => $ensure,
    file_source => template('mac_profile/skip_icloud_setup.mobileconfig.erb'),
    type        => 'template',
  }
}
