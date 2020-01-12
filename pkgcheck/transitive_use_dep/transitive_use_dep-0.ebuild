EAPI=5
DESCRIPTION="transitive use flags in package deps"
LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE="-X alsa berkdb cracklib crypt cups cxx dbus gdbm gtk kde libnotify mad mp4 ncurses opengl pam plasma qt4 qt5 tcpd udev +udisks +upower +usb -xscreensaver zlib"
DEPEND="pkgcheck/fake_dep[X?,!alsa?,!berkdb=,cracklib?,crypt?,cups=,cxx=,dbus=,gdbm?,gtk?,!kde?,!libnotify?,mad,mp4?,ncurses?,!opengl?,pam=,plasma?,qt4?,qt5,tcpd,udev,udisks,upower,usb,xscreensaver,zlib]"
RDEPEND=""
