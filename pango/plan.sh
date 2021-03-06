pkg_name=pango
pkg_origin=core
pkg_version="1.40.13"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('LGPL')
pkg_source="https://download.gnome.org/sources/${pkg_name}/${pkg_version%.*}/${pkg_name}-${pkg_version}.tar.xz"
pkg_shasum="f84e98db1078772ff4935b40a1629ff82ef0dfdd08d2cbcc0130c8c437857196"
pkg_upstream_url="http://www.pango.org"
pkg_description="Pango is a library for laying out and rendering of text, with an emphasis on internationalization."
pkg_deps=(
  core/bzip2
  core/cairo
  core/coreutils
  core/expat
  core/fontconfig
  core/freetype
  core/glib
  core/glibc
  core/harfbuzz
  core/libffi
  core/libiconv
  core/libpng
  core/libxau
  core/libxcb
  core/libxdmcp
  core/libxext
  core/pcre
  core/pixman
  core/xlib
  core/zlib
)
pkg_build_deps=(
  core/file
  core/gcc
  core/make
  core/perl
  core/pkg-config
)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include/pango-1.0/pango)
pkg_lib_dirs=(lib)
pkg_pconfig_dirs=(lib/pkgconfig)

do_prepare() {
  if [ ! -e /usr/bin/file ]
  then
    ln -sv "$(pkg_path_for core/file)/bin/file" /usr/bin/file
  fi
}
