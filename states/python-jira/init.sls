python-pip:
    pkg.installed

jira:
    pip.installed:
      - require:
        - pkg: python-pip
