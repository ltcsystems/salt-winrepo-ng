{% set versions = ['1.8.0.3', '1.7.3.7'] %}

atera-agent:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'AteraAgent'
    installer: 'salt://win/repo-ng/atera-agent/Setup.msi'
    install_flags: ''
    uninstaller: 'msiexec.exe'
    uninstall_flags: |
                     '/qn /norestart /x {5A460F17-C9FF-44E6-A959-0DCF1A292D5A} &
                     msiexec.exe /qn /norestart /x {B7C5EA94-B96A-41F5-BE95-25D78B486678} &
                     exit 0'
    # the above uninstalls:
    # AteraAgent and Splashtop Streamer
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
