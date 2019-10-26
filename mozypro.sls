{% set versions = {'2.38.2':['674']} %}
{% set source_path = 'salt://win/repo-ng/mozypro' %}

mozy-pro:
{% for major, subversions in versions.items() %}
{% for minor in subversions %}
  '{{ major }}.{{ minor }}':
    full_name: 'MozyPro'
    installer: '{{ source_path }}/mozypro-2_38_2_674-96909.exe'
    install_flags: ''
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /norestart /x {EBB3263D-AF89-0907-44BC-B6FFA8DE0525}'
    msiexec: False
    locale: en_US
    reboot: False
{% endfor %}
{% endfor %}

# it can be manually downloaded from your Mozy console:
