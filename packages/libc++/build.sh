TERMUX_PKG_HOMEPAGE=https://libcxx.llvm.org/
TERMUX_PKG_DESCRIPTION="C++ Standard Library"
TERMUX_PKG_LICENSE="NCSA"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=$TERMUX_NDK_VERSION
TERMUX_PKG_SKIP_SRC_EXTRACT=true
TERMUX_PKG_ESSENTIAL=true

termux_step_post_make_install() {
	cp "$TERMUX_STANDALONE_TOOLCHAIN/sysroot/usr/lib/${TERMUX_HOST_PLATFORM}/libc++_shared.so" $TERMUX_PREFIX/lib
}
