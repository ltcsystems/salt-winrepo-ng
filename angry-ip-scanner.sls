{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set source_path = 'salt://win/repo-ng/angry-ip-scanner' %}

angry-ip-scanner:
{% for version in ['3.5.3','3.5.5','3.6.1','3.6.2'] %}
  '{{ version }}':
    full_name: 'Angry IP Scanner'
    installer: '{{ source_path }}/ipscan-{{ version }}-setup.exe'
    install_flags: '/S'
    uninstaller: 'C:\Program Files\Angry IP Scanner\uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}

# it can be manually downloaded from:
# https://angryip.org/
# a product of: https://github.com/angryziber
