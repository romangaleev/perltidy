Welcome to Perltidy!
--------------------

    Perltidy is a tool to indent and reformat perl scripts. It can also
    write scripts in html format.

    Perltidy is free software released under the GNU General Public License
    -- please see the included file "COPYING" for details.

PREREQUISITES
-------------

    "perltidy" should work with most standard Perl installations. The
    following modules are not required, but perltidy may use them if
    detected:

      HTML::Entities  will be used to encode HTML entities if detected
      Pod::Html will be used to format pod text

    The total disk space needed after removing the installation directory
    will about 2 Mb.

DOWNLOAD
--------

    There are two source distribution files:

    *   A .tgz "tarball", with Unix-style <lf> line endings, and

    *   A zip file, .zip, with Windows-style <cr><lf> line endings.

    In addition, the web site has links to debian and RPM packages.

INSTALLATION
------------

    For most standard installations, the standard Makefile.PL method should
    work:

     perl Makefile.PL
     make
     make test
     make install

    The INSTALL file has additional installation notes, and tells how to use
    perltidy without doing an installation.

WHAT NEXT
---------

    Please see the CHANGES file for notices of any recent updates.

    Please see the BUGS file for a list of all known open bugs.

    Documentation can be found in the docs directory, and it can also be
    found at http://perltidy.sourceforge.net

    Reading the brief tutorial should help you use perltidy effectively.

FEEDBACK / BUG REPORTS
----------------------

    Bug reports, comments and suggestions are welcome. Attach the smallest
    piece of code which demonstrates the bug or issue.

     Steve Hancock
     perltidy at users.sourceforge.net
     http://perltidy.sourceforge.net

