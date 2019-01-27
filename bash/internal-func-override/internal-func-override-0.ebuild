EAPI=6

DESCRIPTION="Test if overriding core functionality is allowed"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"

die() {
	echo "die() has been overridden"
}

src_install() {
	die "die() hasn't been overridden"
}
