EAPI=6

DESCRIPTION="Install a large number of files with random content"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S=${WORKDIR}

gen_files() {
	numfiles=${1:-5000}
	for n in $(seq 1 ${numfiles}) ; do
		dd if=/dev/urandom of=file$( printf %03d "$n" ).bin bs=1024 count=1 &>/dev/null
	done
}

src_prepare() {
	default
	gen_files 5000
}

src_install() {
	time doins *
}
