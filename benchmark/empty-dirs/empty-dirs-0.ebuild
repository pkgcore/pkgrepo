EAPI=6

DESCRIPTION="Install a large number of empty dirs"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S=${WORKDIR}

src_prepare() {
	default
	time mkdir -p {a..z}/{a..z}/{a..z}
}

src_install() {
	insinto /usr/share/${PN}
	time doins -r *
}
