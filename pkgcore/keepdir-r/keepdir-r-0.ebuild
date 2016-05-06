EAPI=5

DESCRIPTION="Recursive keepdir support"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S=${WORKDIR}

src_install() {
	keepdir -r /var/tmp/pkgcore/test
}

pkg_postinst() {
	local -a dirs=( /var /var/tmp /var/tmp/pkgcore /var/tmp/pkgcore/test )
	local d
	for d in "${dirs[@]}"; do
		[[ -f ${d}/.keep_${CATEGORY}_${PN}-${SLOT%/*} ]] || eerror "Missing keepdir file after install in ${d}"
	done
}

pkg_postrm() {
	local -a dirs=( /var /var/tmp /var/tmp/pkgcore /var/tmp/pkgcore/test )
	local d
	for d in "${dirs[@]}"; do
		[[ -f ${d}/.keep_${CATEGORY}_${PN}-${SLOT%/*} ]] && eerror "Existing keepdir file after removal in ${d}"
	done
}
