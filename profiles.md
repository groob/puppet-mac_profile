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
