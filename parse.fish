

function ww

	### first define the different options with the argparse function


	argparse 'w/what' 'm/mike' 'd/doom' -- $argv   ### it gonne generate 3 variables called _flag_varname
																								 ### the arguments will be taken away from argv

	### then we gotta check if the options have been passed, to do so we use set -q

	if set -q _flag_what		# notice that there is no $
		echo we are in $PWD		# then do whatever you want
		end

	### same thing for other options

	if set -q _flag_mike
		set -l p (pacman -Q | wc -w)	#### for arch based distros only
		echo $p packages installed
	end

	if set -q _flag_doom
		set -l p (ls ~/Documents/**/????.c | wc -w)
		echo you got $p c files with a 4 letter name in docs..
	end

#### and that's it, to call that function with options, do as usual :
#### ww -w
#### ww --what
#### ww -mwd
#### etc

end
