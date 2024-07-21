##################################
# Initialize commands
##################################

if type -q zoxide
	zoxide init fish | source
end

if type -q direnv
	direnv hook fish | source
end

if type -q starship
	starship init fish | source
end

