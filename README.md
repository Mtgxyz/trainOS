# trainOS

## Description
An operating system built around the language "trainscript"
which is used to execute all user code in a virtual machine.

## Current status:
The vm can execute some code and is able to call native code.
Also it leaks memory. A lot of memory.

## Todo List
- Fixing Memory Leaks
- Adding support for Modules
- Adding support for Pointer Types
- Adding support for String Type

## Guidlines
- Calls to `die` or `die_extra` should follow the following scheme: `ContextName.ErrorName`
