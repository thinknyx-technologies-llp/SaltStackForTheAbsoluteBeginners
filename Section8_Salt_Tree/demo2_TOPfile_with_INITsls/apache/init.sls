install_apache:
  pkg.installed:
    - name: apache2

configure_apache:
  file.managed:
    - name: /var/www/html/index.html
    - contents:
        - "We are learning Salt Stack for the Absolute Beginners by Thinknyx Technologies LLP and this is our second demo for Top file with init.sls"

start_apache:
  service.running:
    - name: apache2
    - enable: True
