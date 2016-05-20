EAPI=5

DESCRIPTION="singular OR dep in package deps"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="|| ( sys-libs/glibc sys-libs/libcap )
	|| ( sys-libs/glibc )
	sys-libs/glibc
"
RDEPEND="${DEPEND}"
