function cdp -d 'Change directory to package'
    if test (count $argv) -ge 1
        set loc (kiss search $argv | grep -v installed | head -n 1)
    end

    if test $loc; and test -d $loc
        cd $loc
    else
        cd /var/db/kiss/repos
    end
end
