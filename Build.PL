# Build.PL
use Module::Build;

my $build = Module::Build->new(
	# look up Module::Build::API for the info!
	'dynamic_config'	=> 0,
	'module_name'		=> 'Filesys::Virtual::Async::Dispatcher',
	'license'		=> 'perl',

	'dist_abstract'		=> "Mounting multiple FsV objects in a single filesystem made possible",
	'dist_author'		=> 'Apocalypse <APOCAL@cpan.org>',

	'create_packlist'	=> 1,
	'create_makefile_pl'	=> 'traditional',
	'create_readme'		=> 1,

	'test_files'		=> 't/*.t',

	'add_to_cleanup'	=> [ 'META.yml', 'Makefile.PL', 'README' ],	# automatically generated

	'build_requires'	=> {
		# Test stuff
		'Test::More'			=> '0.86',	# require latest for note() support in t/a_is_prereq_outdated.t
	},

	'requires'		=> {
		# our superclass
		'Filesys::Virtual::Async'	=> 0,

		# portable filesystem operations are a must!
		'File::Spec'			=> 0,

		# system constants
		'Errno'				=> 0,
		'Fcntl'				=> 0,
	},

	# FIXME wishlist...
#	'test_requires'		=> {
#		# Test stuff
#		'Test::Compile'		=> 0,
#		'Test::Perl::Critic'	=> 0,
#		'Test::Dependencies'	=> 0,
#		'Test::Distribution'	=> 0,
#		'Test::Fixme'		=> 0,
#		'Test::HasVersion'	=> 0,
#		'Test::Kwalitee'	=> 0,
#		'Test::CheckManifest'	=> 0,
#		'Test::MinimumVersion'	=> 0,
#		'Test::Pod::Coverage'	=> 0,
#		'Test::Spelling'	=> 0,
#		'Test::Pod'		=> 0,
#		'Test::Prereq'		=> 0,
#		'Test::Strict'		=> 0,
#		'Test::UseAllModules'	=> 0,
#		'Test::YAML::Meta'	=> 0,
#	},
);

# all done!
$build->create_build_script;
