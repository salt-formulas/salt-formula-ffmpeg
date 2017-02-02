
==============
ffmpeg formula
==============

A complete, cross-platform solution to record, convert and stream audio and video.


Sample pillars
==============

.. code-block:: yaml

    ffmpeg:
      server:
        enabled: true
        input:
          video0:
            source: /dev/video0
            bind:
              host: 192.168.2.1
              port: 8888
            video_format: mjpeg
            width: 640
            height: 480
            format: mpeg
            codec: avi

note: type in your browser http://192.168.2.1:8888/video0.mjpeg

Read more
=========

* https://www.ffmpeg.org/

Documentation and Bugs
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

In the unfortunate event that bugs are discovered, they should be reported to
the appropriate issue tracker. Use Github issue tracker for specific salt
formula:

    https://github.com/salt-formulas/salt-formula-ffmpeg/issues

For feature requests, bug reports or blueprints affecting entire ecosystem,
use Launchpad salt-formulas project:

    https://launchpad.net/salt-formulas

You can also join salt-formulas-users team and subscribe to mailing list:

    https://launchpad.net/~salt-formulas-users

Developers wishing to work on the salt-formulas projects should always base
their work on master branch and submit pull request against specific formula.

    https://github.com/salt-formulas/salt-formula-ffmpeg

Any questions or feedback is always welcome so feel free to join our IRC
channel:

    #salt-formulas @ irc.freenode.net
