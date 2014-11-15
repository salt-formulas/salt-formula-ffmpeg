{% from "ffmpeg/map.jinja" import server with context %}

{%- if server.enabled %}

ffmpeg_packages:
  pkg:
  - installed
  - names: {{ server.pkgs }}

ffmpeg_user:
  user.present:
  - name: ffmpeg
  - system: True
  - home: /opt/ffmpeg

ffmpeg_directories:
  file.directory:
  - names:
    - /opt/ffmpeg
    - /var/ffmpeg
  - user: ffmpeg
  - group: ffmpeg
  - mode: 755
  - makedirs: True
  require:
  - user: ffmpeg_user
  - groups:
    - video

{%- for name, input in server.input.iteritems() %}
{{ server.base_dir }}/{{ name }}.conf:
  file.managed:
  - source: salt://ffmpeg/conf/ffmpeg.conf
  - template: jinja
  - defaults:
      input: {{ input }}
  - user: root
  - group: root
  - mode: 644
  - require:
    - pkg: ffmpeg_packages
{%- endfor %}

{% endif %}