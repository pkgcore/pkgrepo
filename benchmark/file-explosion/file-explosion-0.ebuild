EAPI=6

DESCRIPTION="Install a large number of files with random content"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="1000 2000 4000 +8000 16000 32000 64000"

S=${WORKDIR}

gen_files() {
	numfiles=${1:-8000}
	maxsize=$((1024 ** 2))
	splitsize=$((maxsize / numfiles))
	dd if=/dev/urandom bs=${splitsize} count=${numfiles} 2>/dev/null | \
		split -b ${splitsize} -d -a ${#numfiles} - file
}

src_prepare() {
	default

	# The number of created files defaults to 8000 (the USE default), build
	# with a different USE flag to use a different number.
	local num_files=${USE%% *}
	einfo "Generating ${num_files} files"
	time gen_files ${num_files}
}

src_install() {
	insinto /usr/share/${PN}
	time doins *
}
