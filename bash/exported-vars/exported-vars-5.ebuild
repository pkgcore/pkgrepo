EAPI=5

DESCRIPTION="Output lists of variables in global, phase, and spawned scopes"
SLOT="0"
KEYWORDS="~amd64"

S=${WORKDIR}

GLOBAL_VARS=$(compgen -v)
PHASES=( src_prepare src_configure src_compile src_test src_install )

# Accessible variable lists are outputted to files named ${PHASE_NAME}-vars,
# ${PHASE_NAME}-spawned-vars, and global-vars in ${S}.
for phase in "${PHASES[@]}"; do
	eval "${phase}() {
		compgen -v > \"\${S}\"/\${EBUILD_PHASE_FUNC}-vars
		echo \${GLOBAL_VARS} | tr ' ' '\n' > \"\${S}\"/global-vars
		\${FILESDIR}/test.sh /\${EBUILD_PHASE_FUNC}
	}"
done
