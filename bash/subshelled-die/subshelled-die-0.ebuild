EAPI=6

DESCRIPTION="Test dying in a subshell"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"

_zombie_loop() {
	while true; do
		sleep 1
		eqawarn "died in a subshell and didn't stop main bash process"
	done
}

src_install() {
	_zombie_loop | ( false || die "dying in a subshell" )
	die "continued processing"
}
