function c -d "quickly change to ~/code directory"
    mkdir -p ~/code

    if test -z $argv
        cd ~/code
    else
        cd ~/code/$argv
    end
end
