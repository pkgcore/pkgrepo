EAPI=5

DESCRIPTION="Sandbox issues in pkg_pretend"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

pkg_pretend() {
	touch /foobar || die
}
