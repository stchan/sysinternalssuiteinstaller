# SysInternals Suite Installer for Windows x64
Microsoft does not provide an MSI package for [Mark Russinovich's](https://learn.microsoft.com/en-us/archive/blogs/markrussinovich/) [SysInternals](https://learn.microsoft.com/en-us/sysinternals/) [Suite](https://learn.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite). It distributes ZIPs of the binaries, offers a [live site](https://live.sysinternals.com/), and an [MSIX via the Windows Store](https://learn.microsoft.com/en-us/sysinternals/downloads/microsoft-store). 

This Visual Studio 2022 project will build an MSI that will install the SysInternals Suite, update the system path, and create program menu shortcuts where appropriate.

## Disclaimers
This installer is not an official Microsoft release, and the Microsoft corporation is not involved in its development. I (@stchan) am not affiliated with Microsoft in any way, have no involvement in the development of its products (including the SysInternals Suite), and do not represent it in any manner. All SysInternals utlities are the property of the Microsoft corporation. Check your licensing agreement if you have concerns about building and/or using this installer.

## License
Any content that is not the property of Microsoft (SysInternals and its associated material), and is the work of the author (@stchan) is MIT/X11 licensed.

## Tooling
* Visual Studio 2022

