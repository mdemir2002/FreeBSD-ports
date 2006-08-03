#!/bin/sh

# PROVIDE: popa3d
# REQUIRE: LOGIN cleanvar

. %%RC_SUBR%%

name="popa3d"
rcvar=`set_rcvar`

command="%%PREFIX%%/libexec/${name}"
flags="-D"

load_rc_config $name
run_rc_command "$1"

