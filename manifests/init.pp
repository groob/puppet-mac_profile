# mac_profile is the base class for managing OS X Profiles
class mac_profile (
  $profile_payload_org          = $mac_profile::params::profile_payload_org,
  $profile_identifier_prefix    = $mac_profile::params::profile_identifier_prefix,
  $desktop_background_path      = $mac_profile::params::desktop_background_path
) inherits mac_profile::params {

  # confine to OS X
  unless $::operatingsystem  ==  'Darwin' {
    fail("unsupported osfamily: ${::osfamily}")
  }

  # limit to OS X 10.9 or greater
  $min_os_version = '10.9'

  if versioncmp($::macosx_productversion_major, $min_os_version) < 0 {
    fail("unsupported product version: ${::macosx_productversion_major}")
  }

}
