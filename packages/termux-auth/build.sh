TERMUX_PKG_HOMEPAGE=https://github.com/termux/termux-auth
TERMUX_PKG_DESCRIPTION="Password authentication library and utility for Termux"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="Leonid Pliushch <leonid.pliushch@gmail.com>"
TERMUX_PKG_VERSION=1.3
TERMUX_PKG_SRCURL=https://github.com/termux/termux-auth/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=6f6f45ad308bc875bd757aabc2c2b0f0c2cad42d6644b96c8b5150fa7ba4b77c
TERMUX_PKG_DEPENDS="openssl"
TERMUX_PKG_BREAKS="termux-auth-dev"
TERMUX_PKG_REPLACES="termux-auth-dev"
