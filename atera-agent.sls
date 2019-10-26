atera-agent:
  '1.8.0.3':
    full_name: 'AteraAgent'
    installer: 'salt://win/repo-ng/atera-agent/Setup.msi'
    install_flags: ''
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /norestart /x {5A460F17-C9FF-44E6-A959-0DCF1A292D5A}'
    msiexec: False
    locale: en_US
    reboot: False
