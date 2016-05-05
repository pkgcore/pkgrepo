DESCRIPTION="Test pkg_nofetch phase"
SRC_URI="random_nonexistent_tarball.bz2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RESTRICT="fetch"

pkg_nofetch() {
	einfo "Running pkg_nofetch phase"
}
