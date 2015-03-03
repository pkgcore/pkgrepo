EAPI=6

DESCRIPTION="Test that einstall is banned"
SLOT=0

S=${WORKDIR}

src_prepare() {
	echo "install:" >> Makefile
}

src_compile() { :; }

src_install() {
	einstall || die
}
