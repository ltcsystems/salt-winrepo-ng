dcu-cli:
  latest:
    full_name: 'Dell Command | Update'
    installer: 'salt://deploy/dell-command-update/Dell-Command-Update-Application_XM3K1_WIN_4.2.1_A00.EXE'
    install_flags: '/S'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/q /X{4CD85DD3-A024-4409-A0F2-F70DE1E4A935}'
    msiexec: False
    locale: en_US
    reboot: False
