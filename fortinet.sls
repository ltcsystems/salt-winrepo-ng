FortiClient:
  latest:
    full_name: 'FortiClient'
    installer: 'salt://deploy/forticlient/FortiClient.msi'
    install_flags: ''
    # uninstaller: 'C:\ProgramData\Applications\Cache\{97D17486-D465-4102-83A4-F788846EA3CF}\6.0.8.0261\FortiClient.msi'
    # uninstaller: 'C:\ProgramData\Applications\Cache\{6C0A3C5E-7725-49D8-A016-B3ADCACF61C2}\6.0.9.0277\FortiClient.msi'
    uninstaller: 'C:\ProgramData\Applications\Cache\{01CDBF14-709C-4840-B813-DC49A18A943C}\6.0.10.0297\FortiClient.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
