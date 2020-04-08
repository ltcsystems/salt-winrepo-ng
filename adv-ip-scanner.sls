{% set versions = {'2.5':['3850','3784']} %}

adv-ip-scanner:
{% for major, subversions in versions.items() %}
{% for minor in subversions %}
  '{{ major }}.{{ minor }}':
    full_name: 'Advanced IP Scanner {{ major }}'
    installer: 'salt://deploy/adv-ip-scanner/Advanced_IP_Scanner_{{ major }}.{{ minor }}.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- & taskkill /F /T /IM advanced_ip_scanner.exe & exit 0'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /noreboot /x {FC77CBC1-A83E-4FB4-905C-7467DE6871C4}'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
{% endfor %}
