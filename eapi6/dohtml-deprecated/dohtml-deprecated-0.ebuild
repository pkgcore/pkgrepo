EAPI=6

DESCRIPTION="dohtml is deprecated in EAPI 6"
KEYWORDS="~amd64 ~x86"
SLOT="0"

S=${WORKDIR}

src_prepare() {
	echo "deprecated" > deprecated.html
}

src_install() {
	dohtml *
}
