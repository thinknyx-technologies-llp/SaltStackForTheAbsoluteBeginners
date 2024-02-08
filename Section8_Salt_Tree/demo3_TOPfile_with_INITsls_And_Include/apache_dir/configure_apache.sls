configure_apache:
  file.managed:
    - name: /var/www/html/index.html
    - contents:
        - "We are learning SaltStack for the Absolute Beginners by Thinknyx Technologies LLP and this our third demo for Top file and application directory with multiple state files included in init.sls"
