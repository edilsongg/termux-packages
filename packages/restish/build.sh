TERMUX_PKG_HOMEPAGE="https://github.com/danielgtaylor/restish"
TERMUX_PKG_DESCRIPTION="A CLI for interacting with REST-ish HTTP APIs"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_LICENSE_FILE="LICENSE.md"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.15.1"
TERMUX_PKG_SRCURL="https://github.com/danielgtaylor/restish/archive/v$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=17b09bceafd82ccecde05c6f41c8ad7432ca6fbd8c8b271847330014cecc64e2
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	termux_setup_golang

	go mod init || :
	go mod tidy

	go build
}

termux_step_make_install() {
	install -Dm755 -t "${TERMUX_PREFIX}/bin" restish
}
