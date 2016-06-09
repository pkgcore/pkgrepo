EAPI=6

DESCRIPTION="Test that BASH_COMPAT gets exported to global and phase scope"
KEYWORDS="~amd64 ~x86"
SLOT=0

S=${WORKDIR}

[[ -z ${BASH_COMPAT} ]] && die "BASH_COMPAT not defined in global scope"

src_install() {
	[[ -z ${BASH_COMPAT} ]] && die "BASH_COMPAT not defined in phase scope"
	"${FILESDIR}"/test.sh || die "BASH_COMPAT shouldn't be exported to spawned scripts"
}
