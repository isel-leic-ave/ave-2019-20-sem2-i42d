
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .ver 0:0:0:0
}
.assembly FirstILProg
{
  .ver 1:0:1:0
}
.module FirstILProg.exe
// MVID: {573DCDBA-72BC-461B-9574-DDE9EA71D0AE}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// ================== GLOBAL METHODS =========================

.method privatescope static void  main$PST06000001() cil managed
{
  .entrypoint
  // Code size       19 (0x13)
  .maxstack  10
  IL_0000:  ldc.i4     0xa
  IL_0005:  ldc.i4     0x14
  IL_000a:  add
  IL_000b:  ldc.i4.5
  IL_000c:  sub
  IL_000d:  call       void [mscorlib]System.Console::WriteLine(int32)
  IL_0012:  ret
} // end of global method main


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
