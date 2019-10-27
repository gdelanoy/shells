#!/usr/bin/perl
#####################################################
# Nom du script : localtime.pl
# Utilité: Ce script sert à lire des timestamps zsh
# Usage: localtime < ~/.histfile
# Auteur: Guillaume Delanoy <gdelanoy@gmail.com>
# License: Ce script est sous license GPL v3.
# Veuillez consulter https://www.gnu.org/licenses/quick-guide-gplv3.fr.html
# Créé le: dimanche_27/10/2019 à 21h00
#####################################################
#
#!/usr/bin/perl
# http://perl.plover.com/classes/mybin/samples/source/localtime

if ($ARGV[0] eq '-f') {
  *show_localtime = \&show_localtime_list;
  shift;
}

if (@ARGV) {
  for (@ARGV) {
    print show_localtime($_), "\n";
  }
} else {
  while (<>) {
    s/^(\d+)/show_localtime($1)/e;
    print;
  }
}


sub show_localtime {
  my $t = shift;
  scalar localtime $t;
}

sub show_localtime_list {
  my $t = shift;
  my @a = localtime $t;
  "@a\n"
}

