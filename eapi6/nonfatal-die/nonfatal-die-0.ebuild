EAPI=6

DESCRIPTION="Test nonfatal dying"
KEYWORDS="~amd64 ~x86"
SLOT=0

S=${WORKDIR}

src_install() {
	nonfatal die -n "this shouldn't die"
	echo
	nonfatal die "this should die"
}
