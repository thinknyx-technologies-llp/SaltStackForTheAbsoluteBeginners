create_user:
  user.present:
    - name: joe
    - shell: /bin/bash
    - home: /home/joe
