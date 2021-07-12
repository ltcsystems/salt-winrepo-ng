dcu-cli10:
  latest:
    full_name: 'Dell Command | Update for Windows 10'
    installer: 'salt://deploy/dell-command-update10/Dell-Command-Update-Application-for-Windows-10_W1RMW_WIN_4.2.1_A00.EXE'
    install_flags: '/S'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/q /X{4CCADC13-F3AE-454F-B724-33F6D4E52022}'
    msiexec: False
    locale: en_US
    reboot: False
  '3.1.0':
    full_name: 'Dell Command | Update for Windows 10'
    installer: 'salt://deploy/dell-command-update/Dell-Command-Update-Application-for-Windows-10_34T96_WIN_4.2.1_A00.EXE'
    install_flags: '/S'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/q /X{5669AB71-1302-4412-8DA1-CB69CD7B7324}'
    msiexec: False
    locale: en_US
    reboot: False
  '3.1.2':
    full_name: 'Dell Command | Update for Windows 10'
    installer: 'salt://deploy/dell-command-update/Dell-Command-Update-Application-for-Windows-10_34T96_WIN_4.2.1_A00.EXE'
    install_flags: '/S'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/q /X{5669AB71-1302-4412-8DA1-CB69CD7B7324}'
    msiexec: False
    locale: en_US
    reboot: False
  '3.1.3':
    full_name: 'Dell Command | Update for Windows 10'
    installer: 'salt://deploy/dell-command-update/Dell-Command-Update-Application-for-Windows-10_34T96_WIN_4.2.1_A00.EXE'
    install_flags: '/S'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/q /X{5669AB71-1302-4412-8DA1-CB69CD7B7324}'
    msiexec: False
    locale: en_US
    reboot: False
