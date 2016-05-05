EAPI=6

DESCRIPTION="Test that einstall is banned"
KEYWORDS="~amd64 ~x86"
SLOT=0

S=${WORKDIR}

src_prepare() {
	echo "install:" >> Makefile
}

src_compile() { :; }

src_install() {
	einstall || die
}
