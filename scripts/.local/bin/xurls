#!/usr/bin/perl

use warnings;

$hostchars = '[a-z0-9-._+]';
$pathchars = '[a-z0-9-._+#=?&:;%/!,~]';

sub scan($$$)
{
	my ($file, $lineno, $line) = @_;

	chomp $line;

	while($line =~ s!
      ([a-z]+://)?

# http://

      $hostchars+\.[a-z]+

# www.tim.google.com - the [a-z].com is the main anchor for the whole regex - incase http:// is omitted
# note no trailing slash

      ($pathchars+/\?)*

# check for the index.php? part

      ($pathchars+|\($pathchars+\))*

# check for pathchars, or a set of nested parens
				!!xoi){ # allow space + comments, compile once, strcasecmp

		my($p,$m,$e) = ($`,$&,$');

		$e = '.' . $e if $m =~ s/\.$//;

		if($opt{fname} && $file){
			print "$col{red}$file$col{none}:";
		}

		if($opt{lineno}){
			print "$col{green}$lineno$col{none}: ";
		}elsif($opt{fname} && $file){
			print ' ';
		}

		if($opt{hl}){
			print "$p$col{brown}$m$col{none}$e\n";
		}else{
			print "$m\n";
		}
	}
}

sub usage(){
	$printme =<<"!";
Usage: $0 -[Chn] [FILES...]
 -h: highlight
 -c: force colour on (for pipes)
 -C: colour off (only makes sense with -h)
 -n: show line number
!
	print STDERR $printme;
	exit 1;
}


%opt = (
	colour => 1,
	lineno => 0,
	fname  => 0,
	hl     => 0
);
%col = (
	brown => "\e[0;31m", # hl
	red   => "\e[0;35m", # fname
	green => "\e[0;32m", # lineno
	none  => "\e[0;0m"
);

for $arg (@ARGV){
	if($arg eq '-h'){
		$opt{hl} = 1;
	}elsif($arg eq '-n'){
		$opt{lineno} = 1;
	}elsif($arg eq '-C'){
		$opt{colour} = 0;
	}elsif($arg eq '-c'){
		usage() if $opt{colour} == 0;
		$opt{colour} = 2; # force on
	}elsif($arg eq '--help'){
		usage();
	}else{
		push @files, $arg;
	}
}

usage() if $opt{hl} && !$opt{colour};

$opt{fname} = 1 if $#files > 0 || $opt{lineno};
if(!$opt{colour} || ($opt{colour} == 1 && !-t STDOUT)){
	$col{$_} = '' for keys %col;
}

$| = 1;

if(@files){
	for my $f (@files){
		my $n = 1;
		open F, '<', $f or warn "$f: $!\n";
		scan($f, $n++, $_) for <F>;
		close F;
	}
}else{
	scan(undef, $., $_) while <STDIN>;
}
