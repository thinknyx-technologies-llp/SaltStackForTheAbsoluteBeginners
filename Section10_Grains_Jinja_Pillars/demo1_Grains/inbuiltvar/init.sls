test_file:
  file.managed:
    - name: /var/tmp/testfile
    - contents:
        - "This file is getting variables from grains, running operating system {{ grains['os'] }} with total memory {{ grains['mem_total'] }}"
