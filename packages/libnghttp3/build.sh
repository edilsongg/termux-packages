TERMUX_PKG_HOMEPAGE=https://nghttp2.org/nghttp3/
TERMUX_PKG_DESCRIPTION="HTTP/3 library written in C"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.1.0"
TERMUX_PKG_SRCURL=https://github.com/ngtcp2/nghttp3/releases/download/v${TERMUX_PKG_VERSION}/nghttp3-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=f7ffcf21fb889e7d6a8422a3620deb52a8516364805ec3bd7ef296628ca595cb
TERMUX_PKG_ESSENTIAL=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-lib-only"

termux_step_post_get_source() {
	# Do not forget to bump revision of reverse dependencies and rebuild them
	# after SOVERSION is changed.
	local _SOVERSION=9

	local a
	for a in LT_CURRENT LT_AGE; do
		local _${a}=$(sed -En 's/^AC_SUBST\('"${a}"',\s*([0-9]+).*/\1/p' \
				configure.ac)
	done
	local v=$(( _LT_CURRENT - _LT_AGE ))
	if [ ! "${_LT_CURRENT}" ] || [ "${v}" != "${_SOVERSION}" ]; then
		termux_error_exit "SOVERSION guard check failed."
	fi
}

termux_step_pre_configure() {
	autoreconf -fi
}
