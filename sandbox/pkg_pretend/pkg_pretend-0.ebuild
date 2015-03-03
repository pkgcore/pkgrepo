EAPI=5

DESCRIPTION="Sandbox issues in pkg_pretend"
SLOT="0"

pkg_pretend() {
	touch /foobar || die
}
