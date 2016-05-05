EAPI=5

DESCRIPTION="Check sandbox in global scope"
KEYWORDS="~amd64 ~x86"
SLOT="0"

S=${WORKDIR}

touch /foobar || die
echo "sandbox not working in global scope!" >&2
