$b=<<B;
#define _width 8
#define _height 8
static unsigned char _bits[] = {
0x18,0x3c,0x7e,0xe7,0xe7,0x7e,0x3c,0x18};
B
use Tk;$q=tkinit;$b=$q->Bitmap(-da,$b,qw/-fo red -ba yellow/);$g=0;$h=0;$s=0;
$c=$q->Canvas(qw/-wi 500 -he 500 -cu center_ptr -ba cyan/)->grid;
$l=$q->Label(-textv,\$s,-bg,'cyan');$c->createWindow(80,20,-win,$l);
$c->createOval(0,0,0,0,-fi,'yellow');$c->createOval(0,0,0,0,-fi,'orange');
map{$c->createImage(0,0,-im,$b)}(1..10);foreach (split '','The Perl Journal ')
{$c->createText(0,0,-text,$_),0}@w=qw/80 250 100 230 120 210 140 190 160 170
180 150 200 130 220 110 250 110 280 130 300 150 320 170 340 190 360 210 380 230
 400 250 420 260/;$q->bind('<Motion>',\&mm);$q->bind('<n>',\&n);$q->bind('<1>',
\&f);$q->repeat(50,\&t);MainLoop;sub dn{$s+=$_[0];@l[1..30]=(0)x31;$h=$s>$h?$s:
$h;$g=0;$s=' 'x13 ."$s ($h)  Game Over"}sub f{return unless $g;for(4..8){($i1,
$j1)=$c->coords($_);if($j1<=0){$c->coords($_,$x,490);return}}}
sub li{my($l1,$l2)=@_;my %i;@i{@$l1}=(1)x@$l1;return grep($i{$_},@$l2)}
sub mm{return unless $l[2];$e=$Tk::event;($x,$y)=($e->x,$e->y);
$c->coords(2,$x-5,470,$x+5,490)}sub n{$c->coords(2,145,470,155,490);$c->coords(
3,240,40,260,60);@l[1..30]=(1)x31;$s=0;&mm;$g=1}sub t{foreach $z(1..30){if(
$l[$z]){if($z==3){$dx=rand(50)-25;($x5,$y5,$x6,$y6)=$c->coords($z);$x5+=$dx;
$x5=250 if $x5>480 or $x5<20;$c->coords($z,$x5,$y5,$x6+$dx,$y6)}if($z>=4 and
$z<=8){($i2,$j2)=$c->coords($z);$j2-=30;next if $j2<-30;$c->coords($z,$i2,$j2)}
if($g and $z>=14 and $z<=29){$c->coords($z,$w[($z-14)*2],$w[($z-14)*2+1])}if(
$z==30){unshift(@w,pop(@w));unshift(@w,pop(@w))}}}$q->update;return unless $g;
@o=$c->find('ov',$c->coords(2));&dn(0) if li \@o,[9..13];@o=$c->find('ov',
$c->coords(3));if(li \@o,[4..8]){$l[3]=0;$c->coords(3,0,0,0,0);$q->after(1000=>
sub{$c->coords(3,240,40,260,60);$l[3]=1});$s+=1000}foreach $z (14..29){next
unless $l[$z];@c=$c->coords($z);@o=$c->find('ov',@c,$c[0]+8,$c[1]+8);if(li \@o,
[4..8]){$l[$z]=0;$s+=100;$c->coords($z,0,0)}}&dn(2000) unless li [1],
[@l[14..29]];$q->update}
