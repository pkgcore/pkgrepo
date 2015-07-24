EAPI=5

DESCRIPTION="Test ebuild"
HOMEPAGE="http://www.gentoo.org/"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"

src_prepare() {
	mkdir foo
	touch foo/foo
}

src_install() {
	doins -r foo
	dosym foo /sym
}
