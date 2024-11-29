# Dolphin Flatpak

## Flatpak limitations

Due to how Flatpak sandboxing works, Dolphin only has partial view of the host
filesystem and some folders are not accessible at all.

For more details see the
[Filesystem access section of the Flatpak documentation](https://docs.flatpak.org/en/latest/sandbox-permissions.html#filesystem-access).

## Known non-working functionnalities

* Accessing sftp (missing libssh dependency and KWallet communication)
* Accessing mtp (missing libmtp)
* Not visible mounted devices (most likely because of no access to plasma dataengines)
  - Accessible from /run/media
