/*---------------------------------------------------------------------------
  Copyright 2020, Daan Leijen, Microsoft Corporation.

  This is free software; you can redistribute it and/or modify it under the
  terms of the Apache License, Version 2.0. A copy of the License can be
  found in the file "license.txt" at the root of this distribution.
---------------------------------------------------------------------------*/

/* Run processes.
*/
module std/os/process

import std/os/path

extern import {
  c file "process-inline.c"
}

// Run a command in the shell and return its output as a string.
public extern run-system-read( cmd : string ) : io error<string> {
  c "kk_os_run_command_error"
}

// Run a command in the shell
public extern run-system( cmd : string ) : io int {
  c "kk_os_run_system_prim"
}
