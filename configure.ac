AC_INIT([wai-cgi-test], [0.1], [https://github.com/uuhan/wai-cgi-test])
AC_CONFIG_SRCDIR([wai-cgi-test.cabal])

AC_CONFIG_AUX_DIR([config])

PWD=$(pwd)

AC_CHECK_PROG(NGINX, nginx, yes)
if test x"$NGINX" != x"yes"; then
    AC_MSG_ERROR([This test suite need nginx, please install one])
fi

AC_CHECK_PROG(FCGI, fcgiwrap, yes)
if test x"$FCGI" != x"yes"; then
    AC_MSG_ERROR([This test suite need fcgiwrap, please install one])
fi

AC_SUBST(PWD)

AC_CONFIG_FILES([Makefile
                 wai-cgi-test.buildinfo
                 nginx.conf])
AC_OUTPUT
