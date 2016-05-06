DESCRIPTION="pkg_nofetch phase isn't run without a fetch restrict"
SRC_URI="random_nonexistent_tarball.bz2"
SLOT="1"
KEYWORDS="~amd64 ~x86"

pkg_nofetch() {
	einfo "Running pkg_nofetch phase"
}
