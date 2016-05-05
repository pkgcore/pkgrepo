EAPI=5

DESCRIPTION="Check sandbox in global scope"
KEYWORDS="~amd64 ~x86"
SLOT="0"

S=${WORKDIR}

touch /foobar || die
eerror "sandbox not working in global scope!"
