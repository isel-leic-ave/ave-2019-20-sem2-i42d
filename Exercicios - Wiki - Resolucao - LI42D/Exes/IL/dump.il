
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Exercicios
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0A 45 78 65 72 63 69 63 69 6F 73 00 00 )    // ...Exercicios..
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
  .ver 1:0:7487:29318
}
.module Exercicios.exe
// MVID: {A65D2B42-1726-479E-9E0D-BA6CBC832D50}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Exercicios.Exes.Sammy
       extends [mscorlib]System.Attribute
{
  .field private int32 '<Nr>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_Nr() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Exercicios.Exes.Sammy::'<Nr>k__BackingField'
    IL_0006:  ret
  } // end of method Sammy::get_Nr

  .method public hidebysig specialname instance void 
          set_Nr(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Exercicios.Exes.Sammy::'<Nr>k__BackingField'
    IL_0007:  ret
  } // end of method Sammy::set_Nr

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method Sammy::.ctor

  .property instance int32 Nr()
  {
    .get instance int32 Exercicios.Exes.Sammy::get_Nr()
    .set instance void Exercicios.Exes.Sammy::set_Nr(int32)
  } // end of property Sammy::Nr
} // end of class Exercicios.Exes.Sammy

.class private auto ansi beforefieldinit Exercicios.Exes.Game
       extends [mscorlib]System.Object
{
  .custom instance void Exercicios.Exes.Sammy::.ctor() = ( 01 00 01 00 54 08 02 4E 72 47 00 00 00 )          // ....T..NrG...
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Game::.ctor

} // end of class Exercicios.Exes.Game

.class public auto ansi beforefieldinit Exercicios.Exes.App
       extends [mscorlib]System.Object
{
  .method public hidebysig static int32  Foo() cil managed
  {
    // Code size       3 (0x3)
    .maxstack  8
    IL_0000:  ldc.i4.s   17
    IL_0002:  ret
  } // end of method App::Foo

  .method private hidebysig static void  Main1() cil managed
  {
    // Code size       95 (0x5f)
    .maxstack  2
    IL_0000:  ldtoken    Exercicios.Exes.Game
    IL_0005:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_000a:  call       !!0 [mscorlib]System.Reflection.CustomAttributeExtensions::GetCustomAttribute<class Exercicios.Exes.Sammy>([mscorlib]System.Reflection.MemberInfo)
    IL_000f:  ldc.i4.s   19
    IL_0011:  callvirt   instance void Exercicios.Exes.Sammy::set_Nr(int32)
    IL_0016:  ldtoken    Exercicios.Exes.Game
    IL_001b:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0020:  call       !!0 [mscorlib]System.Reflection.CustomAttributeExtensions::GetCustomAttribute<class Exercicios.Exes.Sammy>([mscorlib]System.Reflection.MemberInfo)
    IL_0025:  callvirt   instance int32 Exercicios.Exes.Sammy::get_Nr()
    IL_002a:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_002f:  ldtoken    Exercicios.Exes.Game
    IL_0034:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0039:  call       !!0 [mscorlib]System.Reflection.CustomAttributeExtensions::GetCustomAttribute<class Exercicios.Exes.Sammy>([mscorlib]System.Reflection.MemberInfo)
    IL_003e:  ldc.i4.s   19
    IL_0040:  callvirt   instance void Exercicios.Exes.Sammy::set_Nr(int32)
    IL_0045:  ldtoken    Exercicios.Exes.Game
    IL_004a:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_004f:  call       !!0 [mscorlib]System.Reflection.CustomAttributeExtensions::GetCustomAttribute<class Exercicios.Exes.Sammy>([mscorlib]System.Reflection.MemberInfo)
    IL_0054:  callvirt   instance int32 Exercicios.Exes.Sammy::get_Nr()
    IL_0059:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_005e:  ret
  } // end of method App::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method App::.ctor

} // end of class Exercicios.Exes.App

.class interface private abstract auto ansi Exercicios.Exes.IBean
{
  .method public hidebysig newslot abstract virtual 
          instance void  Set(int32 v) cil managed
  {
  } // end of method IBean::Set

  .method public hidebysig newslot abstract virtual 
          instance int32  Get() cil managed
  {
  } // end of method IBean::Get

} // end of class Exercicios.Exes.IBean

.class private sequential ansi sealed beforefieldinit Exercicios.Exes.S
       extends [mscorlib]System.ValueType
       implements Exercicios.Exes.IBean
{
  .field public int32 x
  .method public hidebysig newslot virtual final 
          instance void  Set(int32 v) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Exercicios.Exes.S::x
    IL_0007:  ret
  } // end of method S::Set

  .method public hidebysig newslot virtual final 
          instance int32  Get() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Exercicios.Exes.S::x
    IL_0006:  ret
  } // end of method S::Get

} // end of class Exercicios.Exes.S

.class public auto ansi beforefieldinit Exercicios.Exes.Exe9
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       129 (0x81)
    .maxstack  4
    .locals init (valuetype Exercicios.Exes.S V_0,
             valuetype Exercicios.Exes.S V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Exercicios.Exes.S
    IL_0008:  ldloc.0
    IL_0009:  box        Exercicios.Exes.S
    IL_000e:  ldloc.0
    IL_000f:  box        Exercicios.Exes.S
    IL_0014:  ldc.i4.s   11
    IL_0016:  callvirt   instance void Exercicios.Exes.IBean::Set(int32)
    IL_001b:  ldloc.0
    IL_001c:  ldfld      int32 Exercicios.Exes.S::x
    IL_0021:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0026:  ldloc.0
    IL_0027:  box        Exercicios.Exes.S
    IL_002c:  dup
    IL_002d:  ldc.i4.s   11
    IL_002f:  callvirt   instance void Exercicios.Exes.IBean::Set(int32)
    IL_0034:  callvirt   instance int32 Exercicios.Exes.IBean::Get()
    IL_0039:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_003e:  dup
    IL_003f:  unbox.any  Exercicios.Exes.S
    IL_0044:  stloc.1
    IL_0045:  ldloca.s   V_1
    IL_0047:  ldc.i4.s   11
    IL_0049:  call       instance void Exercicios.Exes.S::Set(int32)
    IL_004e:  dup
    IL_004f:  callvirt   instance int32 Exercicios.Exes.IBean::Get()
    IL_0054:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0059:  ldloca.s   V_0
    IL_005b:  ldc.i4.s   11
    IL_005d:  stfld      int32 Exercicios.Exes.S::x
    IL_0062:  dup
    IL_0063:  callvirt   instance int32 Exercicios.Exes.IBean::Get()
    IL_0068:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_006d:  ldloca.s   V_0
    IL_006f:  ldc.i4.s   11
    IL_0071:  call       instance void Exercicios.Exes.S::Set(int32)
    IL_0076:  callvirt   instance int32 Exercicios.Exes.IBean::Get()
    IL_007b:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0080:  ret
  } // end of method Exe9::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Exe9::.ctor

} // end of class Exercicios.Exes.Exe9

.class private auto ansi sealed Exercicios.Exes.Func
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method Func::.ctor

  .method public hidebysig newslot virtual 
          instance object  Invoke(int32 p) runtime managed
  {
  } // end of method Func::Invoke

  .method public hidebysig newslot virtual 
          instance [mscorlib]System.IAsyncResult 
          BeginInvoke(int32 p,
                      [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method Func::BeginInvoke

  .method public hidebysig newslot virtual 
          instance object  EndInvoke([mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method Func::EndInvoke

} // end of class Exercicios.Exes.Func

.class private abstract auto ansi beforefieldinit Exercicios.Exes.A
       extends [mscorlib]System.Object
{
  .field private class Exercicios.Exes.Func '<Handlers>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<MaxNumHandlers>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method family hidebysig specialname instance class Exercicios.Exes.Func 
          get_Handlers() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Exercicios.Exes.Func Exercicios.Exes.A::'<Handlers>k__BackingField'
    IL_0006:  ret
  } // end of method A::get_Handlers

  .method family hidebysig specialname instance void 
          set_Handlers(class Exercicios.Exes.Func 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Exercicios.Exes.Func Exercicios.Exes.A::'<Handlers>k__BackingField'
    IL_0007:  ret
  } // end of method A::set_Handlers

  .method family hidebysig specialname instance int32 
          get_MaxNumHandlers() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Exercicios.Exes.A::'<MaxNumHandlers>k__BackingField'
    IL_0006:  ret
  } // end of method A::get_MaxNumHandlers

  .method family hidebysig specialname instance void 
          set_MaxNumHandlers(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Exercicios.Exes.A::'<MaxNumHandlers>k__BackingField'
    IL_0007:  ret
  } // end of method A::set_MaxNumHandlers

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(int32 maxNumHandlers) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Exercicios.Exes.A::set_MaxNumHandlers(int32)
    IL_000d:  ret
  } // end of method A::.ctor

  .property instance class Exercicios.Exes.Func
          Handlers()
  {
    .get instance class Exercicios.Exes.Func Exercicios.Exes.A::get_Handlers()
    .set instance void Exercicios.Exes.A::set_Handlers(class Exercicios.Exes.Func)
  } // end of property A::Handlers
  .property instance int32 MaxNumHandlers()
  {
    .get instance int32 Exercicios.Exes.A::get_MaxNumHandlers()
    .set instance void Exercicios.Exes.A::set_MaxNumHandlers(int32)
  } // end of property A::MaxNumHandlers
} // end of class Exercicios.Exes.A

.class private auto ansi beforefieldinit Exercicios.Exes.B
       extends Exercicios.Exes.A
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.s   10
    IL_0003:  call       instance void Exercicios.Exes.A::.ctor(int32)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  ldftn      instance object Exercicios.Exes.B::Bundle(int32)
    IL_0010:  newobj     instance void Exercicios.Exes.Func::.ctor(object,
                                                                   native int)
    IL_0015:  call       instance void Exercicios.Exes.A::set_Handlers(class Exercicios.Exes.Func)
    IL_001a:  ret
  } // end of method B::.ctor

  .method private hidebysig instance object 
          Bundle(int32 p) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  box        [mscorlib]System.Int32
    IL_0006:  ret
  } // end of method B::Bundle

  .method public hidebysig instance object 
          InvokeAll(object parameter) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Exercicios.Exes.Func Exercicios.Exes.A::get_Handlers()
    IL_0006:  ldarg.1
    IL_0007:  unbox.any  [mscorlib]System.Int32
    IL_000c:  callvirt   instance object Exercicios.Exes.Func::Invoke(int32)
    IL_0011:  ret
  } // end of method B::InvokeAll

} // end of class Exercicios.Exes.B

.class private auto ansi beforefieldinit Exercicios_Implementacao2.Student
       extends [mscorlib]System.Object
{
  .field private int32 '<Nr>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Name>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_Nr() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Exercicios_Implementacao2.Student::'<Nr>k__BackingField'
    IL_0006:  ret
  } // end of method Student::get_Nr

  .method public hidebysig specialname instance void 
          set_Nr(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Exercicios_Implementacao2.Student::'<Nr>k__BackingField'
    IL_0007:  ret
  } // end of method Student::set_Nr

  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Exercicios_Implementacao2.Student::'<Name>k__BackingField'
    IL_0006:  ret
  } // end of method Student::get_Name

  .method private hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Exercicios_Implementacao2.Student::'<Name>k__BackingField'
    IL_0007:  ret
  } // end of method Student::set_Name

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Student::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 number,
                               string name) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Exercicios_Implementacao2.Student::set_Nr(int32)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  call       instance void Exercicios_Implementacao2.Student::set_Name(string)
    IL_0014:  ret
  } // end of method Student::.ctor

  .method private hidebysig static bool  NumberGreaterThan20000(int32 nr) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x4e20
    IL_0006:  cgt
    IL_0008:  ret
  } // end of method Student::NumberGreaterThan20000

  .property instance int32 Nr()
  {
    .custom instance void Exercicios_Implementacao2.ValidatorAttribute::.ctor([mscorlib]System.Type,
                                                                              string) = ( 01 00 21 45 78 65 72 63 69 63 69 6F 73 5F 49 6D   // ..!Exercicios_Im
                                                                                          70 6C 65 6D 65 6E 74 61 63 61 6F 32 2E 53 74 75   // plementacao2.Stu
                                                                                          64 65 6E 74 16 4E 75 6D 62 65 72 47 72 65 61 74   // dent.NumberGreat
                                                                                          65 72 54 68 61 6E 32 30 30 30 30 00 00 )          // erThan20000..
    .get instance int32 Exercicios_Implementacao2.Student::get_Nr()
    .set instance void Exercicios_Implementacao2.Student::set_Nr(int32)
  } // end of property Student::Nr
  .property instance string Name()
  {
    .get instance string Exercicios_Implementacao2.Student::get_Name()
    .set instance void Exercicios_Implementacao2.Student::set_Name(string)
  } // end of property Student::Name
} // end of class Exercicios_Implementacao2.Student

.class private auto ansi beforefieldinit Exercicios_Implementacao2.NumberValidator
       extends [mscorlib]System.Object
{
  .field private static class Exercicios_Implementacao2.ValidatorAttribute att
  .field private static bool '<Created>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig specialname static 
          bool  get_Created() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Exercicios_Implementacao2.NumberValidator::'<Created>k__BackingField'
    IL_0005:  ret
  } // end of method NumberValidator::get_Created

  .method private hidebysig specialname static 
          void  set_Created(bool 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Exercicios_Implementacao2.NumberValidator::'<Created>k__BackingField'
    IL_0006:  ret
  } // end of method NumberValidator::set_Created

  .method public hidebysig static bool  SetValidNumber(class Exercicios_Implementacao2.Student student,
                                                       int32 nr) cil managed
  {
    // Code size       88 (0x58)
    .maxstack  3
    .locals init (bool V_0)
    IL_0000:  call       bool Exercicios_Implementacao2.NumberValidator::get_Created()
    IL_0005:  brtrue.s   IL_0037

    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_000d:  ldstr      "Nr"
    IL_0012:  callvirt   instance [mscorlib]System.Reflection.PropertyInfo [mscorlib]System.Type::GetProperty(string)
    IL_0017:  ldtoken    Exercicios_Implementacao2.ValidatorAttribute
    IL_001c:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0021:  ldc.i4.0
    IL_0022:  call       [mscorlib]System.Attribute [mscorlib]System.Reflection.CustomAttributeExtensions::GetCustomAttribute([mscorlib]System.Reflection.MemberInfo,
                                                                                                                              [mscorlib]System.Type,
                                                                                                                              bool)
    IL_0027:  castclass  Exercicios_Implementacao2.ValidatorAttribute
    IL_002c:  stsfld     class Exercicios_Implementacao2.ValidatorAttribute Exercicios_Implementacao2.NumberValidator::att
    IL_0031:  ldc.i4.1
    IL_0032:  call       void Exercicios_Implementacao2.NumberValidator::set_Created(bool)
    IL_0037:  ldc.i4.1
    IL_0038:  stloc.0
    IL_0039:  ldsfld     class Exercicios_Implementacao2.ValidatorAttribute Exercicios_Implementacao2.NumberValidator::att
    IL_003e:  brfalse.s  IL_0056

    IL_0040:  ldsfld     class Exercicios_Implementacao2.ValidatorAttribute Exercicios_Implementacao2.NumberValidator::att
    IL_0045:  ldarg.1
    IL_0046:  callvirt   instance bool Exercicios_Implementacao2.ValidatorAttribute::IsValidNumber(int32)
    IL_004b:  stloc.0
    IL_004c:  ldloc.0
    IL_004d:  brfalse.s  IL_0056

    IL_004f:  ldarg.0
    IL_0050:  ldarg.1
    IL_0051:  callvirt   instance void Exercicios_Implementacao2.Student::set_Nr(int32)
    IL_0056:  ldloc.0
    IL_0057:  ret
  } // end of method NumberValidator::SetValidNumber

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method NumberValidator::.ctor

  .property bool Created()
  {
    .get bool Exercicios_Implementacao2.NumberValidator::get_Created()
    .set void Exercicios_Implementacao2.NumberValidator::set_Created(bool)
  } // end of property NumberValidator::Created
} // end of class Exercicios_Implementacao2.NumberValidator

.class private auto ansi beforefieldinit Exercicios_Implementacao2.App
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       125 (0x7d)
    .maxstack  3
    .locals init (class Exercicios_Implementacao2.Student V_0,
             bool V_1)
    IL_0000:  newobj     instance void Exercicios_Implementacao2.Student::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldc.i4     0x4a38
    IL_000c:  call       bool Exercicios_Implementacao2.NumberValidator::SetValidNumber(class Exercicios_Implementacao2.Student,
                                                                                        int32)
    IL_0011:  stloc.1
    IL_0012:  ldstr      "Number {0} is valid\? {1}"
    IL_0017:  ldc.i4     0x76c
    IL_001c:  box        [mscorlib]System.Int32
    IL_0021:  ldloc.1
    IL_0022:  box        [mscorlib]System.Boolean
    IL_0027:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_002c:  ldstr      "Student number: {0}"
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance int32 Exercicios_Implementacao2.Student::get_Nr()
    IL_0037:  box        [mscorlib]System.Int32
    IL_003c:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0041:  ldloc.0
    IL_0042:  ldc.i4     0x61a8
    IL_0047:  call       bool Exercicios_Implementacao2.NumberValidator::SetValidNumber(class Exercicios_Implementacao2.Student,
                                                                                        int32)
    IL_004c:  stloc.1
    IL_004d:  ldstr      "Number {0} is valid\? {1}"
    IL_0052:  ldc.i4     0x61a8
    IL_0057:  box        [mscorlib]System.Int32
    IL_005c:  ldloc.1
    IL_005d:  box        [mscorlib]System.Boolean
    IL_0062:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_0067:  ldstr      "Student number: {0}"
    IL_006c:  ldloc.0
    IL_006d:  callvirt   instance int32 Exercicios_Implementacao2.Student::get_Nr()
    IL_0072:  box        [mscorlib]System.Int32
    IL_0077:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_007c:  ret
  } // end of method App::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method App::.ctor

} // end of class Exercicios_Implementacao2.App

.class private auto ansi beforefieldinit Exercicios_Implementacao2.ValidatorAttribute
       extends [mscorlib]System.Attribute
{
  .field private [mscorlib]System.Reflection.MethodInfo '<Method>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig specialname instance [mscorlib]System.Reflection.MethodInfo 
          get_Method() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      [mscorlib]System.Reflection.MethodInfo Exercicios_Implementacao2.ValidatorAttribute::'<Method>k__BackingField'
    IL_0006:  ret
  } // end of method ValidatorAttribute::get_Method

  .method private hidebysig specialname instance void 
          set_Method([mscorlib]System.Reflection.MethodInfo 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      [mscorlib]System.Reflection.MethodInfo Exercicios_Implementacao2.ValidatorAttribute::'<Method>k__BackingField'
    IL_0007:  ret
  } // end of method ValidatorAttribute::set_Method

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor([mscorlib]System.Type 'type',
                               string methodName) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  ldarg.2
    IL_0009:  ldc.i4.s   40
    IL_000b:  callvirt   instance [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string,
                                                                                                          [mscorlib]System.Reflection.BindingFlags)
    IL_0010:  call       instance void Exercicios_Implementacao2.ValidatorAttribute::set_Method([mscorlib]System.Reflection.MethodInfo)
    IL_0015:  ret
  } // end of method ValidatorAttribute::.ctor

  .method public hidebysig instance bool 
          IsValidNumber(int32 nr) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance [mscorlib]System.Reflection.MethodInfo Exercicios_Implementacao2.ValidatorAttribute::get_Method()
    IL_0006:  ldnull
    IL_0007:  ldc.i4.1
    IL_0008:  newarr     [mscorlib]System.Object
    IL_000d:  dup
    IL_000e:  ldc.i4.0
    IL_000f:  ldarg.1
    IL_0010:  box        [mscorlib]System.Int32
    IL_0015:  stelem.ref
    IL_0016:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_001b:  unbox.any  [mscorlib]System.Boolean
    IL_0020:  ret
  } // end of method ValidatorAttribute::IsValidNumber

  .property instance [mscorlib]System.Reflection.MethodInfo
          Method()
  {
    .get instance [mscorlib]System.Reflection.MethodInfo Exercicios_Implementacao2.ValidatorAttribute::get_Method()
    .set instance void Exercicios_Implementacao2.ValidatorAttribute::set_Method([mscorlib]System.Reflection.MethodInfo)
  } // end of property ValidatorAttribute::Method
} // end of class Exercicios_Implementacao2.ValidatorAttribute

.class private auto ansi beforefieldinit Exercicios_Implementacao1.Student
       extends [mscorlib]System.Object
{
  .field private int32 '<Nr>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Name>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_Nr() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Exercicios_Implementacao1.Student::'<Nr>k__BackingField'
    IL_0006:  ret
  } // end of method Student::get_Nr

  .method public hidebysig specialname instance void 
          set_Nr(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Exercicios_Implementacao1.Student::'<Nr>k__BackingField'
    IL_0007:  ret
  } // end of method Student::set_Nr

  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Exercicios_Implementacao1.Student::'<Name>k__BackingField'
    IL_0006:  ret
  } // end of method Student::get_Name

  .method private hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Exercicios_Implementacao1.Student::'<Name>k__BackingField'
    IL_0007:  ret
  } // end of method Student::set_Name

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Student::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 number,
                               string name) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Exercicios_Implementacao1.Student::set_Nr(int32)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  call       instance void Exercicios_Implementacao1.Student::set_Name(string)
    IL_0014:  ret
  } // end of method Student::.ctor

  .property instance int32 Nr()
  {
    .custom instance void Exercicios_Implementacao1.ValidatorAttribute::.ctor(string) = ( 01 00 16 4E 75 6D 62 65 72 47 72 65 61 74 65 72   // ...NumberGreater
                                                                                          54 68 61 6E 32 30 30 30 30 00 00 )                // Than20000..
    .get instance int32 Exercicios_Implementacao1.Student::get_Nr()
    .set instance void Exercicios_Implementacao1.Student::set_Nr(int32)
  } // end of property Student::Nr
  .property instance string Name()
  {
    .get instance string Exercicios_Implementacao1.Student::get_Name()
    .set instance void Exercicios_Implementacao1.Student::set_Name(string)
  } // end of property Student::Name
} // end of class Exercicios_Implementacao1.Student

.class private auto ansi beforefieldinit Exercicios_Implementacao1.NumberValidator
       extends [mscorlib]System.Object
{
  .field private static class Exercicios_Implementacao1.ValidatorAttribute att
  .field private static bool '<Created>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig specialname static 
          bool  get_Created() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     bool Exercicios_Implementacao1.NumberValidator::'<Created>k__BackingField'
    IL_0005:  ret
  } // end of method NumberValidator::get_Created

  .method private hidebysig specialname static 
          void  set_Created(bool 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     bool Exercicios_Implementacao1.NumberValidator::'<Created>k__BackingField'
    IL_0006:  ret
  } // end of method NumberValidator::set_Created

  .method public hidebysig static bool  SetValidNumber(class Exercicios_Implementacao1.Student student,
                                                       int32 nr) cil managed
  {
    // Code size       88 (0x58)
    .maxstack  3
    .locals init (bool V_0)
    IL_0000:  call       bool Exercicios_Implementacao1.NumberValidator::get_Created()
    IL_0005:  brtrue.s   IL_0037

    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_000d:  ldstr      "Nr"
    IL_0012:  callvirt   instance [mscorlib]System.Reflection.PropertyInfo [mscorlib]System.Type::GetProperty(string)
    IL_0017:  ldtoken    Exercicios_Implementacao1.ValidatorAttribute
    IL_001c:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0021:  ldc.i4.0
    IL_0022:  call       [mscorlib]System.Attribute [mscorlib]System.Reflection.CustomAttributeExtensions::GetCustomAttribute([mscorlib]System.Reflection.MemberInfo,
                                                                                                                              [mscorlib]System.Type,
                                                                                                                              bool)
    IL_0027:  castclass  Exercicios_Implementacao1.ValidatorAttribute
    IL_002c:  stsfld     class Exercicios_Implementacao1.ValidatorAttribute Exercicios_Implementacao1.NumberValidator::att
    IL_0031:  ldc.i4.1
    IL_0032:  call       void Exercicios_Implementacao1.NumberValidator::set_Created(bool)
    IL_0037:  ldc.i4.1
    IL_0038:  stloc.0
    IL_0039:  ldsfld     class Exercicios_Implementacao1.ValidatorAttribute Exercicios_Implementacao1.NumberValidator::att
    IL_003e:  brfalse.s  IL_0056

    IL_0040:  ldsfld     class Exercicios_Implementacao1.ValidatorAttribute Exercicios_Implementacao1.NumberValidator::att
    IL_0045:  ldarg.1
    IL_0046:  callvirt   instance bool Exercicios_Implementacao1.ValidatorAttribute::IsValidNumber(int32)
    IL_004b:  stloc.0
    IL_004c:  ldloc.0
    IL_004d:  brfalse.s  IL_0056

    IL_004f:  ldarg.0
    IL_0050:  ldarg.1
    IL_0051:  callvirt   instance void Exercicios_Implementacao1.Student::set_Nr(int32)
    IL_0056:  ldloc.0
    IL_0057:  ret
  } // end of method NumberValidator::SetValidNumber

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method NumberValidator::.ctor

  .property bool Created()
  {
    .get bool Exercicios_Implementacao1.NumberValidator::get_Created()
    .set void Exercicios_Implementacao1.NumberValidator::set_Created(bool)
  } // end of property NumberValidator::Created
} // end of class Exercicios_Implementacao1.NumberValidator

.class private auto ansi beforefieldinit Exercicios_Implementacao1.App
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       125 (0x7d)
    .maxstack  3
    .locals init (class Exercicios_Implementacao1.Student V_0,
             bool V_1)
    IL_0000:  newobj     instance void Exercicios_Implementacao1.Student::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldc.i4     0x4a38
    IL_000c:  call       bool Exercicios_Implementacao1.NumberValidator::SetValidNumber(class Exercicios_Implementacao1.Student,
                                                                                        int32)
    IL_0011:  stloc.1
    IL_0012:  ldstr      "Number {0} is valid\? {1}"
    IL_0017:  ldc.i4     0x76c
    IL_001c:  box        [mscorlib]System.Int32
    IL_0021:  ldloc.1
    IL_0022:  box        [mscorlib]System.Boolean
    IL_0027:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_002c:  ldstr      "Student number: {0}"
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance int32 Exercicios_Implementacao1.Student::get_Nr()
    IL_0037:  box        [mscorlib]System.Int32
    IL_003c:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0041:  ldloc.0
    IL_0042:  ldc.i4     0x61a8
    IL_0047:  call       bool Exercicios_Implementacao1.NumberValidator::SetValidNumber(class Exercicios_Implementacao1.Student,
                                                                                        int32)
    IL_004c:  stloc.1
    IL_004d:  ldstr      "Number {0} is valid\? {1}"
    IL_0052:  ldc.i4     0x61a8
    IL_0057:  box        [mscorlib]System.Int32
    IL_005c:  ldloc.1
    IL_005d:  box        [mscorlib]System.Boolean
    IL_0062:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_0067:  ldstr      "Student number: {0}"
    IL_006c:  ldloc.0
    IL_006d:  callvirt   instance int32 Exercicios_Implementacao1.Student::get_Nr()
    IL_0072:  box        [mscorlib]System.Int32
    IL_0077:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_007c:  ret
  } // end of method App::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method App::.ctor

} // end of class Exercicios_Implementacao1.App

.class private auto ansi beforefieldinit Exercicios_Implementacao1.ValidatorAttribute
       extends [mscorlib]System.Attribute
{
  .field private [mscorlib]System.Reflection.MethodInfo '<Method>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig specialname instance [mscorlib]System.Reflection.MethodInfo 
          get_Method() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      [mscorlib]System.Reflection.MethodInfo Exercicios_Implementacao1.ValidatorAttribute::'<Method>k__BackingField'
    IL_0006:  ret
  } // end of method ValidatorAttribute::get_Method

  .method private hidebysig specialname instance void 
          set_Method([mscorlib]System.Reflection.MethodInfo 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      [mscorlib]System.Reflection.MethodInfo Exercicios_Implementacao1.ValidatorAttribute::'<Method>k__BackingField'
    IL_0007:  ret
  } // end of method ValidatorAttribute::set_Method

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string methodName) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  call       instance [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_000d:  ldarg.1
    IL_000e:  ldc.i4.s   40
    IL_0010:  callvirt   instance [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string,
                                                                                                          [mscorlib]System.Reflection.BindingFlags)
    IL_0015:  call       instance void Exercicios_Implementacao1.ValidatorAttribute::set_Method([mscorlib]System.Reflection.MethodInfo)
    IL_001a:  ret
  } // end of method ValidatorAttribute::.ctor

  .method private hidebysig static bool  NumberGreaterThan20000(int32 nr) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x4e20
    IL_0006:  cgt
    IL_0008:  ret
  } // end of method ValidatorAttribute::NumberGreaterThan20000

  .method public hidebysig instance bool 
          IsValidNumber(int32 nr) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance [mscorlib]System.Reflection.MethodInfo Exercicios_Implementacao1.ValidatorAttribute::get_Method()
    IL_0006:  ldnull
    IL_0007:  ldc.i4.1
    IL_0008:  newarr     [mscorlib]System.Object
    IL_000d:  dup
    IL_000e:  ldc.i4.0
    IL_000f:  ldarg.1
    IL_0010:  box        [mscorlib]System.Int32
    IL_0015:  stelem.ref
    IL_0016:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_001b:  unbox.any  [mscorlib]System.Boolean
    IL_0020:  ret
  } // end of method ValidatorAttribute::IsValidNumber

  .property instance [mscorlib]System.Reflection.MethodInfo
          Method()
  {
    .get instance [mscorlib]System.Reflection.MethodInfo Exercicios_Implementacao1.ValidatorAttribute::get_Method()
    .set instance void Exercicios_Implementacao1.ValidatorAttribute::set_Method([mscorlib]System.Reflection.MethodInfo)
  } // end of property ValidatorAttribute::Method
} // end of class Exercicios_Implementacao1.ValidatorAttribute


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
