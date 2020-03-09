
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
// MVID: {BE30B628-744E-483B-AC3B-0D42FE98A570}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// ================== GLOBAL METHODS =========================

.method privatescope static void  main$PST06000001() cil managed
{
  .entrypoint
  // Code size       79 (0x4f)
  .maxstack  10
  IL_0000:  ldc.i4     0xa
  IL_0005:  ldc.i4     0x14
  IL_000a:  ldc.i4     0xa
  IL_000f:  ldc.i4     0x14
  IL_0014:  ldc.i4     0xa
  IL_0019:  ldc.i4     0x14
  IL_001e:  ldc.i4     0xa
  IL_0023:  ldc.i4     0x14
  IL_0028:  ldc.i4     0xa
  IL_002d:  ldc.i4     0x14
  IL_0032:  ldc.i4     0xa
  IL_0037:  ldc.i4     0x14
  IL_003c:  ldc.i4     0xa
  IL_0041:  ldc.i4     0x14
  IL_0046:  add
  IL_0047:  ldc.i4.5
  IL_0048:  sub
  IL_0049:  call       void [mscorlib]System.Console::WriteLine(int32)
  IL_004e:  ret
} // end of global method main


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
