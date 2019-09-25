atera-agent:
  latest:
    full_name: 'AteraAgent'
    installer: 'salt://win/repo-ng/atera-agent/Setup.msi'
    install_flags: ''
    uninstaller: 'C:\WINDOWS\Installer\415e0.msi'
    uninstall_flags: '/I{5A460F17-C9FF-44E6-A959-0DCF1A292D5A}'
    msiexec: True
    locale: en_US
    reboot: False
