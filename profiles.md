# managed profiles

# Desktop Background
```
class {'mac_profile::desktop_background':
  ensure                  => present,
  desktop_background_path => '/Library/Desktop Pictures/Lion.jpg'
}
```

# Restrict AppStore

The defaults below default to `true` but can be set to `false`.
```
class {'mac_profile::restrict_appstore':
  restrict_store_softwareupdate_only      => false,
  restrict_store_disable_app_adoption     => false,
  restrict_store_require_admin_to_install => false
}
```

To set everything to true, just `include 'mac_profile::restrict_appstore'` in the manifest.

# Skip iCloud Setup

```
include 'mac_profile::skip_icloud_setup'
```

# Login Window settings
Manage common login window settings like hiding the admin users and setting loginwindow text.

```
class {'mac_profile::loginwindow':
  guest_enabled          => false,
  show_input_menu        => true,
  show_fullname          => true,
  hide_local_users       => true,
  include_network_user   => false,
  hide_admin_users       => true,
  hide_mobile_accounts   => true,
  disable_console_access => true,
  loginwindow_text       => "This Mac is managed by ${::mac_profile::profile_payload_org}"
}
```
