EAPI=6

inherit multilib

DESCRIPTION="Test get_libdir implementation"
KEYWORDS="~amd64 ~x86"
SLOT=0

S=${WORKDIR}

src_install() {
	local internal=$(get_libdir) eclass=$(get_abi_LIBDIR)
	[[ ${internal} == ${eclass} ]] || die "${internal} != ${eclass}"
}
