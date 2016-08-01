Common macOS Configuration Profiles Managed by Puppet.

# Usage
This module uses the [mac_profiles_handler](https://github.com/keeleysam/puppet-mac_profiles_handler) module to install certain common modules. To use it, first include the class itself, overriding the identifier and `PayloadOrganization` defaults.

```
class {'mac_profile':
  profile_payload_org       => 'My Company',
  profile_identifier_prefix => 'com.mycompany'
}
```

You can also override these params from hiera
the prefix will be used for all the ProfileIdentifier keys. For example, the Desktop Background profile will be installed as `com.mycopmany.desktop_background`.

```
class {'mac_profile::desktop_background':
  ensure 				  => present,
  desktop_background_path => '/path/to/desktop.jpg'
}
```

For a full list of managed classes, see [profiles.md](./profiles.md)
