#PowerShell Core https://github.com/PowerShell/PowerShell

{% set source_path = 'https://github.com/PowerShell/PowerShell/releases/download/v' %}

powershell-core:
  {% for version in ['6.2.3'] %}
  '{{ version }}.0':
    {% if grains['cpuarch'] == 'AMD64' %}
    full_name: 'PowerShell 6-x64'
    installer: '{{ source_path }}{{ version }}/PowerShell-{{ version }}-win-x64.msi'
    uninstaller: '{{ source_path }}{{ version }}/PowerShell-{{ version }}-win-x64.msi'
    {% else %}
    full_name: 'PowerShell 6-x86'
    installer: '{{ source_path }}{{ version }}/PowerShell-{{ version }}-win-x86.msi'
    uninstaller: '{{ source_path }}{{ version }}/PowerShell-{{ version }}-win-x86.msi'
    {% endif %}
    install_flags: '/quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  {% endfor %}
