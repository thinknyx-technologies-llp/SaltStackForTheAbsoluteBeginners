configure_apache:
  file.managed:
    - name: /etc/apache2/ports.conf
    - source: salt://requisite_apache/ports.conf
    - require:
        - pkg: install_apache

install_apache:
  pkg.installed:
    - name: apache2


start_apache:
  service.running:
    - name: apache2
    - enable: True
    - watch:
        - file: configure_apache
