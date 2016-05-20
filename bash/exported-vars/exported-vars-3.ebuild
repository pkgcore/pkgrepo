EAPI=3

DESCRIPTION="Output lists of global and phase scope variables"
SLOT="0"
KEYWORDS="~amd64"

S=${WORKDIR}

GLOBAL_VARS=$(compgen -v)
PHASES=( src_prepare src_configure src_compile src_test src_install )

# Accessible variable lists are outputted to files named ${PHASE_NAME}-vars and
# global-vars in ${S}.
for phase in "${PHASES[@]}"; do
	eval "${phase}() {
		compgen -v > \"\${S}\"/\${FUNCNAME[0]}-vars
		echo \${GLOBAL_VARS} | tr ' ' '\n' > \"\${S}\"/global-vars
	}"
done
