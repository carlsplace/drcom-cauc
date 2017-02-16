# Maintainer: Ricardo Vieira <ricardo.vieira@tecnico.ulisboa.pt>

pkgname=drcom-cauc
pkgver=0.1
pkgrel=1
pkgdesc="drcom client for Linux"
arch=('i686' 'x86_64')
url="https://github.com/drcoms/drcom-generic"
license=('GPLv2')
depends=('python2')
makedepends=('make' 'git')
optdepends=()
provides=('drcom-cauc')
conflicts=()
# install=drcom.install
source=("$pkgname"::'git+https://github.com/carlsplace/drcom-cauc.git#branch=master')
noextract=()
md5sums=('SKIP')

package() {
	cd "$srcdir/$pkgname"
	make DESTDIR="$pkgdir/" install
}
