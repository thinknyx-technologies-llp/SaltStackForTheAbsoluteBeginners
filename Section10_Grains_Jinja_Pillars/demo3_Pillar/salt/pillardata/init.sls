user_creation:
  user.present:
    - name: {{ pillar['username'] }}

file_creation:
  file.managed:
    - name: {{ pillar['filename'] }}
