EAPI=5

DESCRIPTION="Test ebuild"
HOMEPAGE="http://www.gentoo.org/"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"

src_prepare() {
	mkdir sym
	touch sym/foo
}

src_install() {
	doins -r sym
}
