EAPI=5

DESCRIPTION="Sandbox issues in pkg_pretend"
KEYWORDS="~amd64 ~x86"
SLOT="0"

pkg_pretend() {
	touch /foobar || die
	eerror "sandbox not working in pkg_pretend()!"
}
