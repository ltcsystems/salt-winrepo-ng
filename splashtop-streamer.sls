{% set versions = ['3.3.4.0'] %}

splashtop-streamer:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Splashtop Streamer'
    installer: ''
    install_flags: ''
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/x {B7C5EA94-B96A-41F5-BE95-25D78B486678}'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
