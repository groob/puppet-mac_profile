# manage common loginwindow settings
class mac_profile::loginwindow (
  $ensure                 = 'present',
  $guest_enabled          = false,
  $show_input_menu        = true,
  $show_fullname          = true,
  $hide_local_users       = true,
  $include_network_user   = false,
  $hide_admin_users       = true,
  $hide_mobile_accounts   = true,
  $disable_console_access = true,
  $loginwindow_text       = ''
) inherits mac_profile {

  mac_profiles_handler::manage { "${profile_identifier_prefix}.loginwindow":
    ensure      => $ensure,
    file_source => template('mac_profile/loginwindow.mobileconfig.erb'),
    type        => 'template',
  }
}
