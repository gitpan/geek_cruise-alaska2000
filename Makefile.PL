#!/usr/bin/perl -w
use ExtUtils::MakeMaker qw(:DEFAULT);
WriteMakefile(
    'NAME'	=> 'geek_cruise::alaska2000',
    'VERSION_FROM' => 'alaska2000.pm',
);

sub MY::postamble {
  q{
show:
	mgp -g 1024x768 -V presentation.mgp

ps:
	mgp2ps -f presentation.ps presentation.mgp
}
}
