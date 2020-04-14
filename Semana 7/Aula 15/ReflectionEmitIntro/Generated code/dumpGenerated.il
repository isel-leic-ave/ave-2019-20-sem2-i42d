
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly HelloReflectionEmit
{
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module HelloReflectionEmit
// MVID: {B3BDAA0C-74CE-476D-8EA2-5C9C929FB626}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi Hello.Emitted
       extends [mscorlib]System.Object
{
  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Emitted::.ctor

  .method public static int32  Main(string[] A_0) cil managed
  {
    .entrypoint
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldstr      "Ola {0}"
    IL_0005:  ldc.i4.s   10
    IL_0007:  nop
    IL_0008:  nop
    IL_0009:  nop
    IL_000a:  box        [mscorlib]System.Int32
    IL_000f:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0014:  ldc.i4.0
    IL_0015:  ret
  } // end of method Emitted::Main

} // end of class Hello.Emitted


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
