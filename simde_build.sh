SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

function usage {
	echo "usage: $0 <source_dir> <target_arch>"
	exit 1
}

[ -z $1 ] && { usage; }
[ -z $2 ] && { usage; }

cmake "$1" -DCMAKE_C_FLAGS="-march=$2 -DHAVE_SSE2 -DNO_ASM -D__SSSE3__ -DSIMDE_SSSE3_NO_NATIVE -I$SCRIPTPATH/simde -I$SCRIPTPATH/include/simde-compat" -DCMAKE_CXX_FLAGS="-march=$2 -DHAVE_SSE2 -DNO_ASM -D__SSSE3__ -DSIMDE_SSSE3_NO_NATIVE -I$SCRIPTPATH/simde -I$SCRIPTPATH/include/simde-compat" -DCMAKE_REQUIRED_INCLUDES="$SCRIPTPATH/simde;$SCRIPTPATH/include/simde-compat" -DFAT_RUNTIME=OFF
