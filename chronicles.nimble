mode = ScriptMode.Verbose

packageName   = "chronicles"
version       = "0.12.3"
author        = "Status Research & Development GmbH"
description   = "A crafty implementation of structured logging for Nim"
license       = "Apache License 2.0"
skipDirs      = @["tests"]

requires "nim >= 2.0.16"
requires "https://github.com/NimVenture/nim-faststreams.git >= 0.3.0"
requires "serialization"
requires "json_serialization" # Only needed for json outputs

before test:
  requires "testutils"

task test, "run CPU tests":
  when defined(windows):
    exec "ntu.cmd test tests"
  else:
    exec "ntu test tests"
