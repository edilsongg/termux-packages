TERMUX_PKG_HOMEPAGE=https://github.com/kak-lsp/kak-lsp
TERMUX_PKG_DESCRIPTION="Language Server Protocol Client for the Kakoune editor"
TERMUX_PKG_LICENSE="MIT, Unlicense"
TERMUX_PKG_MAINTAINER="@buttaface"
TERMUX_PKG_VERSION="12.2.0"
TERMUX_PKG_SRCURL=https://github.com/kak-lsp/kak-lsp/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=801ac0e812a8d520bcfc445bf09a7a534864a91e70f1fc2d986886800466527e
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	rm Makefile
}

termux_step_post_make_install() {
	rm -rf $TERMUX_PREFIX/share/kak-lsp
	mkdir -p $TERMUX_PREFIX/share/kak-lsp/examples
	cp $TERMUX_PKG_SRCDIR/kak-lsp.toml $TERMUX_PREFIX/share/kak-lsp/examples
	cp -r $TERMUX_PKG_SRCDIR/rc $TERMUX_PREFIX/share/kak-lsp
}
