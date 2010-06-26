######################################################################
# Makefile.PL for SVN::Utils::ClientIP
# 2010, Mike Schilli <cpan@perlmeister.com>
######################################################################
use ExtUtils::MakeMaker;

my $meta_merge = {
    META_MERGE => {
        resources => {
            repository => 'http://github.com/mschilli/svn-utils-clientip-perl',
        },
    }
};

WriteMakefile(
    'NAME'         => 'SVN::Utils::ClientIP',
    'VERSION_FROM' => 'lib/SVN/Utils/ClientIP.pm', # finds $VERSION
    'PREREQ_PM'    => {
        Proc::ProcessTable      => 0.40,
        Proc::Info::Environment => 0.01,
    }, # e.g., Module::Name => 1.1
    $ExtUtils::MakeMaker::VERSION >= 6.50 ? (%$meta_merge) : (),
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'lib/SVN/Utils/ClientIP.pm',
       AUTHOR     => 'Mike Schilli <cpan@perlmeister.com>') : ()),
);
