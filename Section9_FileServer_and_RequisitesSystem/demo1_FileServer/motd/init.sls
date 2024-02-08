motd_file:
  file.managed:
    - name: /etc/motd
    - source: salt://motd/motdfile
