start_apache:
  service.running:
    - name: apache2
    - enable: True
