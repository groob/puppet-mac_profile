# restrict app store use 
class mac_profile::restrict_appstore (
  $ensure                                   = 'present',
  $restrict_store_softwareupdate_only       = true,
  $restrict_store_disable_app_adoption      = true,
  $restrict_store_require_admin_to_install  = true
) inherits mac_profile {

  mac_profiles_handler::manage { "${profile_identifier_prefix}.appstore":
    ensure      => $ensure,
    file_source => template('mac_profile/restrict_app_store.mobileconfig.erb'),
    type        => 'template',
  }
}
