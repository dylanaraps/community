function __fish_kiss_all_packages -d 'Obtain a list of all available packages'
    for p in $KISS_PATH
        find "$p/" -maxdepth 1 -type d -exec basename {} \;
    end | sort -u
end

function __fish_kiss_build_packages -d 'Obtain a list of build packages'
    if set -q XDG_CACHE_HOME
        set bin "$XDG_CACHE_HOME/kiss/bin/"
    else
        set bin "$HOME/.cache/kiss/bin/"
    end

    find $bin -maxdepth 1 -type f -exec basename {} \; | cut -d '#' -f 1
end

function __fish_kiss_installed_packages -d 'Obtain a list of installed packages'
    kiss list | cut -d ' ' -f 1
end

function __fish_kiss_no_subcommand -d 'Test if kiss has yet to be given the command'
    for i in (commandline -opc)
        if contains -- $i a alternatives b build c checksum h help i install l list r remove s search u update v version
            return 1
        end
    end
    return 0
end

# Standard commands.

complete -c kiss -f -n __fish_kiss_no_subcommand -a alternatives -d 'List and swap to alternatives'
complete -c kiss -f -n '__fish_seen_subcommand_from a alternatives' -a '(kiss alternatives)'

complete -c kiss -f -n __fish_kiss_no_subcommand -a build -d 'Build a package'
complete -c kiss -f -n '__fish_seen_subcommand_from b build' -a '(__fish_kiss_all_packages)'

complete -c kiss -f -n __fish_kiss_no_subcommand -a checksum -d 'Generate checksums'
complete -c kiss -f -n '__fish_seen_subcommand_from c checksum' -a '(__fish_kiss_all_packages)'

complete -c kiss -f -n __fish_kiss_no_subcommand -a help -d 'Print help'

complete -c kiss -f -n __fish_kiss_no_subcommand -a install -d 'Install a package'
complete -c kiss -f -n '__fish_seen_subcommand_from i install' -a '(__fish_kiss_build_packages)'

complete -c kiss -f -n __fish_kiss_no_subcommand -a list -d 'List installed packages'
complete -c kiss -f -n '__fish_seen_subcommand_from l list' -a '(__fish_kiss_installed_packages)'

complete -c kiss -f -n __fish_kiss_no_subcommand -a remove -d 'Remove a package'
complete -c kiss -f -n '__fish_seen_subcommand_from r remove' -a '(__fish_kiss_installed_packages)'

complete -c kiss -f -n __fish_kiss_no_subcommand -a search -d 'Search for a package'

complete -c kiss -f -n __fish_kiss_no_subcommand -a update -d 'Check for updates'

complete -c kiss -f -n __fish_kiss_no_subcommand -a version -d 'Package manager version'

# Contrib commands.

#complete -c kiss -f -n __fish_kiss_no_subcommand -a cargo-urlgen -d 'Generate sources for rust package'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a chbuild -d 'Create/destroy temporary chroot'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a chroot -d 'Enter a kiss chroot'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a depends -d 'Display a package\'s dependencies'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a depends-finder -d 'Find missing dependencies by parsing \'ldd\''

#complete -c kiss -f -n __fish_kiss_no_subcommand -a export -d 'Turn an installed package into a KISS tarball'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a fork -d 'Copy a package\'s repository files into the current directory'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a link -d 'Link a repository file to another repository'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a maintainer -d 'Find the maintainer of a package'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a manifest -d 'Display all files owned by a package'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a manifest-tree -d 'Display all files owned by a package in a tree'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a new -d 'Create a boilerplate package'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a orphans -d 'List orphaned packages'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a outdated -d 'Check installed packages for updates'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a owns -d 'Check which package owns a file'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a repodepends -d 'Display a package\'s original dependencies'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a reset -d 'Remove all packages except for the base'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a revdepends -d 'Display packages which depend on package'

#complete -c kiss -f -n __fish_kiss_no_subcommand -a size -d 'Show the size on disk for a package'
