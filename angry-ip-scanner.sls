{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
{% endif %}

{% set versions = {'3':['5.3','5.5','6.1','6.2']} %}
{% set source_path = 'salt://win/repo-ng/angry-ip-scanner' %}

angry-ip-scanner:
{% for major, subversions in versions.items() %}
{% for minor in subversions %}
  '{{ major }}.{{ minor }}':
    full_name: 'Angry IP Scanner'
    installer: '{{ source_path }}/ipscan-{{ major }}.{{ minor }}-setup.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\Angry IP Scanner\uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
{% endfor %}

# it can be manually downloaded from:
# https://angryip.org/
# a product of: https://github.com/angryziber
