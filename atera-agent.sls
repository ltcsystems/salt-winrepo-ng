{% set versions = ['1.8.0.3', '1.7.3.7'] %}

atera-agent:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'AteraAgent'
    installer: 'salt://deploy/atera-agent/Setup.msi'
    install_flags: '/quiet /qn'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/quiet /qn /x {5A460F17-C9FF-44E6-A959-0DCF1A292D5A}'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
