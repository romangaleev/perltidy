# This is a simple testfile to demonstrate perltidy, from perlop(1).
# One way (of several) to run perltidy is as follows:
#
#   perl ./perltidy lextest.pl
#
# The output will be "lextest.pl.tdy"
$_= <<'EOL';
   $url = new URI::URL "http://www/";   die if $url eq "xXx";
EOL
LOOP:{print(" digits"),redo LOOP if/\G\d+\b[,.;]?\s*/gc;print(" lowercase"),
redo LOOP if/\G[a-z]+\b[,.;]?\s*/gc;print(" UPPERCASE"),redo LOOP 
if/\G[A-Z]+\b[,.;]?\s*/gc;print(" Capitalized"),
redo LOOP if/\G[A-Z][a-z]+\b[,.;]?\s*/gc;
print(" MiXeD"),redo LOOP if/\G[A-Za-z]+\b[,.;]?\s*/gc;print(
" alphanumeric"),redo LOOP if/\G[A-Za-z0-9]+\b[,.;]?\s*/gc;print(" line-noise"
),redo LOOP if/\G[^A-Za-z0-9]+/gc;print". That's all!\n";}
