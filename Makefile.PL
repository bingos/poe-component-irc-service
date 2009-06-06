#use ExtUtils::MakeMaker;
use inc::Module::Install;
print <<NOTICE;

\a--------------------------------------------------------------------------------
The hybrid part of this module has never really worked properly and has now been
superseded by POE::Component::Server::IRC.

The P10 part will eventually be supported by POE::Component::Server::IRC.

I am not actively supporting this module, so be warned.

have a nice day >:)
---------------------------------------------------------------------------------

NOTICE

license 'perl';
author 'Chris Williams <chris@bingosnet.co.uk>';
abstract 'A fully event driven IRC Services module';
build_requires 'Test::More' => 0.47;

WriteMakefile(
			  'NAME'	=> 'POE::Component::IRC::Service',
			  'PREREQ_PM' => {
					  'POE'    => 0.06_07,
					  'Carp'   => 0,
					  'Socket' => 0,
					 },
			  'VERSION_FROM' => 'lib/POE/Component/IRC/Service.pm',
			  'dist' => { 'COMPRESS' => 'gzip --best' },
			 );

