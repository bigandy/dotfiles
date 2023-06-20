# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.

function openLinkInChrome() {
	open -a "Google Chrome" "$1";
}


# Create React App with Vite in custom folder
function cva() {
	npm init vite@latest "$1" --template react-ts && cd "$1" && code . && npm i && npm run dev
}

function killport() {
	kill $(lsof -ti:"$1")
}

function openLinkInFirefox() {
	open -a "Firefox Nightly" "$1";
}

function gm() {
     git commit -am "$1"
}

function gam() {
    git add -A :/ && git commit -m "$1"
}

function gamnv() {
    git add -A :/ && git commit -m "$1" --no-verify
}

function tweet() {
    t update "$1"
}

function md() {
	mkdir -p $1 && cd $1
}


function cpwd() {
	pwd | pbcopy
}

# Git reset --soft with the param being the hash that you want to pass
function grd() {
	git reset --soft $1
}


pass() {
	if [ -n "$1" ]
		then
			pwgen -sy $1 1 |pbcopy |pbpaste; echo " Has been copied to clipboard"
	else
		pwgen -sy 60 1 |pbcopy |pbpaste; echo "Has been copied to clipboard"
	fi
}


ana() {
	if [ "$1" = "vh" ]
		then
			open https://analytics.google.com/analytics/web/#/p310466660/reports/intelligenthome
	else
		open https://360suite.google.com/overview/home?authuser=0
	fi
}
