EAPI=6

DESCRIPTION="Check in_iuse implementation"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE="+foo -bar foobar"

S=${WORKDIR}

src_prepare() {
	in_iuse foo || die
	in_iuse bar || die
	in_iuse foobar || die
	in_iuse ${ARCH} || die
	in_iuse +foo && die
	in_iuse -bar && die
}
