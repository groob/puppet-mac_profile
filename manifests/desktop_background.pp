# manage desktop background
class mac_profile::desktop_background (
  $ensure = 'present',
  $desktop_background_path = $mac_profile::desktop_background_path
) inherits mac_profile {

  mac_profiles_handler::manage { "${profile_identifier_prefix}.desktop_background":
    ensure      => $ensure,
    file_source => template('mac_profile/desktop_background.mobileconfig.erb'),
    type        => 'template',
  }
}
