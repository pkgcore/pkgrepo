# This test ebuild may reveal a nasty corner case which just slip through
# all checks, e.g if we have pkgcheck/pkg_name/pkg_name-mismatch-0.ebuild
# where pkg = pkg_name, ver = mismatch-0 while generating versions.
# Herewith, cpv ctor may receive 1(cpv) or 3(c,p,v) args of form %s/%s-%s
# and after splitting we have pkg = pkg_name-mismatch and ver = 0.

EAPI=5
DESCRIPTION="Test ebuild for checking one of the pkg name mismatch case"
SLOT="0"
