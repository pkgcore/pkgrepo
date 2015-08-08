EAPI=5

DESCRIPTION="Test dying in a subshell"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"

src_install() {
	#die "regular die"
	#foo=$(echo $(echo $(echo foo; die "dying in a subshell")));
	sleep 600 | ( false || die "dying in a subshell" )
	echo "continued processing"
}
