EAPI=6

DESCRIPTION="Install a large number of files with random content"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="1000 2000 4000 +8000 16000 32000 64000"

S=${WORKDIR}

gen_files() {
	numfiles=${1:-8000}
	for n in $(seq 1 ${numfiles}) ; do
		dd if=/dev/urandom of=file$( printf %04d "$n" ).bin bs=1024 count=1 &>/dev/null
	done
}

src_prepare() {
	default

	# The number of created files defaults to 8000 (the USE default), build
	# with a different USE flag to use a different number.
	local num_files=${USE%% *}
	time gen_files ${num_files}
}

src_install() {
	insinto /usr/share/${PN}
	time doins *
}
