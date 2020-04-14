function __fish_kiss_all_packages -d 'Obtain a list of all available packages'
    for p in $KISS_PATH
        find "$p/" -maxdepth 1 -type d -exec basename {} \;
    end | sort -u
end

complete -c cdp -f -a '(__fish_kiss_all_packages)'
