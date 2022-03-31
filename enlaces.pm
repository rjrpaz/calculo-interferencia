package enlaces;

use strict;

require Exporter;
require Mysql;
use vars qw(@ISA @EXPORT @EXPORT_OK %EXPORT_TAGS $VERSION);

$VERSION     = 0.01;

@ISA         = qw(Exporter Mysql);
@EXPORT      = qw($server $tmpldir $titulo $color_de_fondo);

%EXPORT_TAGS = ( );     # eg: TAG => [ qw!name1 name2! ],

@EXPORT_OK   = qw();
use vars qw($server $tmpldir $titulo $color_de_fondo);

$server = "http://server.micasa.org:443";
#$server = "http://192.168.1.17";
$tmpldir = "/usr/local/apache-root/enlaces-tmpl";
$titulo = "Enlaces - C&aacute;lculo de Interferencia";
$color_de_fondo = "#ffffff";

END {};

1;
