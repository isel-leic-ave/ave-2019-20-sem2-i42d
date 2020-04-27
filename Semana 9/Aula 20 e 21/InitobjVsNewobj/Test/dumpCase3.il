
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly InitobjVsNewobj
{
  .hash algorithm 0x00008004
  .ver 1:0:7032:35264
}
.module InitobjVsNewobj.exe
// MVID: {161DD4B9-45DC-44BB-856F-18590C920EDD}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private sequential ansi sealed beforefieldinit InitobjVsNewobj.Point
       extends [mscorlib]System.ValueType
{
  .field public float64 x
  .field public float64 y
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(float64 x,
                               float64 y) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      float64 InitobjVsNewobj.Point::x
    IL_0008:  ldarg.0
    IL_0009:  ldarg.2
    IL_000a:  stfld      float64 InitobjVsNewobj.Point::y
    IL_000f:  ret
  } // end of method Point::.ctor

} // end of class InitobjVsNewobj.Point

.class private auto ansi beforefieldinit InitobjVsNewobj.PointClass
       extends [mscorlib]System.Object
{
  .field public float64 x
  .field public float64 y
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method PointClass::.ctor

} // end of class InitobjVsNewobj.PointClass

.class public auto ansi beforefieldinit InitobjVsNewobj.Initobj_and_newobj
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       68 (0x44)
    .maxstack  2
    .locals init (valuetype InitobjVsNewobj.Point V_0,
             class InitobjVsNewobj.PointClass V_1)
    IL_0000:  nop
//    IL_0001:  ldloca.s   V_0
    IL_0001:  ldloc.0  // Change ldloca.s V_0 to ldloc.0 in store field. Works?
    IL_0003:  ldc.r8     10
    IL_000c:  stfld      float64 InitobjVsNewobj.Point::x
    IL_0011:  ldstr      "p.x = {0}"
    //IL_0016:  ldloc.0
    IL_0016:  ldloca.s   V_0 // Change ldloc.0 to ldloca.s
    IL_0017:  ldfld      float64 InitobjVsNewobj.Point::x
    IL_001c:  box        [mscorlib]System.Double
    IL_0021:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0026:  nop
    IL_0027:  newobj     instance void InitobjVsNewobj.PointClass::.ctor()
    IL_002c:  stloc.1
    IL_002d:  ldstr      "p2.x = {0}"
    IL_0032:  ldloc.1
    IL_0033:  ldfld      float64 InitobjVsNewobj.PointClass::x
    IL_0038:  box        [mscorlib]System.Double
    IL_003d:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0042:  nop
    IL_0043:  ret
  } // end of method Initobj_and_newobj::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Initobj_and_newobj::.ctor

} // end of class InitobjVsNewobj.Initobj_and_newobj


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
