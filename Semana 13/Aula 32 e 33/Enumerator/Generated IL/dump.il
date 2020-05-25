
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Enumerator
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0A 45 6E 75 6D 65 72 61 74 6F 72 00 00 )    // ...Enumerator..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 36 2E 31 01   // ,Version=v4.6.1.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 36 2E 31 )          // amework 4.6.1
  .hash algorithm 0x00008004
  .ver 1:0:7447:40641
}
.module Enumerator.exe
// MVID: {7125A9FF-D9CE-4664-BA85-C03C3B806660}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Enumerator.MainClass
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       80 (0x50)
    .maxstack  3
    .locals init (int32 V_0,
             [mscorlib]System.Collections.Generic.List`1<int32> V_1,
             [mscorlib]System.Collections.Generic.List`1/Enumerator<int32> V_2,
             int32 V_3)
    IL_0000:  nop
    IL_0001:  ldc.i4.5
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.5
    IL_0004:  newarr     [mscorlib]System.Int32
    IL_0009:  dup
    IL_000a:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=20' '<PrivateImplementationDetails>'::'1036C5F8EF306104BD582D73E555F4DAE8EECB24'
    IL_000f:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray([mscorlib]System.Array,
                                                                                                        [mscorlib]System.RuntimeFieldHandle)
    IL_0014:  newobj     instance void [mscorlib]System.Collections.Generic.List`1<int32>::.ctor([mscorlib]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0019:  stloc.1
    IL_001a:  nop
    IL_001b:  ldloc.1
    IL_001c:  callvirt   instance [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> [mscorlib]System.Collections.Generic.List`1<int32>::GetEnumerator()
    IL_0021:  stloc.2
    .try
    {
      IL_0022:  br.s       IL_0035

      IL_0024:  ldloca.s   V_2
      IL_0026:  call       instance !0 [mscorlib]System.Collections.Generic.List`1/Enumerator<int32>::get_Current()
      IL_002b:  stloc.3
      IL_002c:  nop
      IL_002d:  ldloc.3
      IL_002e:  call       void [mscorlib]System.Console::WriteLine(int32)
      IL_0033:  nop
      IL_0034:  nop
      IL_0035:  ldloca.s   V_2
      IL_0037:  call       instance bool [mscorlib]System.Collections.Generic.List`1/Enumerator<int32>::MoveNext()
      IL_003c:  brtrue.s   IL_0024

      IL_003e:  leave.s    IL_004f

    }  // end .try
    finally
    {
      IL_0040:  ldloca.s   V_2
      IL_0042:  constrained. [mscorlib]System.Collections.Generic.List`1/Enumerator<int32>
      IL_0048:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_004d:  nop
      IL_004e:  endfinally
    }  // end handler
    IL_004f:  ret
  } // end of method MainClass::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method MainClass::.ctor

} // end of class Enumerator.MainClass

.class private auto ansi sealed '<PrivateImplementationDetails>'
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=20'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 20
  } // end of class '__StaticArrayInitTypeSize=20'

  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=20' '1036C5F8EF306104BD582D73E555F4DAE8EECB24' at I_00002950
} // end of class '<PrivateImplementationDetails>'


// =============================================================

.data cil I_00002950 = bytearray (
                 01 00 00 00 02 00 00 00 03 00 00 00 04 00 00 00
                 05 00 00 00) 
// *********** DISASSEMBLY COMPLETE ***********************
