
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly ReflectionEmitIntro
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 13 52 65 66 6C 65 63 74 69 6F 6E 45 6D 69   // ...ReflectionEmi
                                                                                              74 49 6E 74 72 6F 00 00 )                         // tIntro..
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
  .ver 1:0:7409:23280
}
.module ReflectionEmitIntro.exe
// MVID: {F53F62AA-B0D4-4D81-85C7-38A303B8980E}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit ReflectionEmitIntro.Test
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Ola {0}"
    IL_0006:  ldc.i4.s   10
    IL_0008:  box        [mscorlib]System.Int32
    IL_000d:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0012:  nop
    IL_0013:  ret
  } // end of method Test::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Test::.ctor

} // end of class ReflectionEmitIntro.Test

.class private auto ansi beforefieldinit Aulas1314.ReflectionEmitIntro
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main1() cil managed
  {
    // Code size       353 (0x161)
    .maxstack  8
    .locals init ([mscorlib]System.Reflection.AssemblyName V_0,
             [mscorlib]System.AppDomain V_1,
             [mscorlib]System.Reflection.Emit.AssemblyBuilder V_2,
             string V_3,
             [mscorlib]System.Reflection.Emit.ModuleBuilder V_4,
             [mscorlib]System.Reflection.Emit.TypeBuilder V_5,
             [mscorlib]System.Reflection.Emit.MethodBuilder V_6,
             [mscorlib]System.Reflection.Emit.ILGenerator V_7,
             [mscorlib]System.Type V_8)
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.Reflection.AssemblyName::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldstr      "HelloReflectionEmit"
    IL_000d:  callvirt   instance void [mscorlib]System.Reflection.AssemblyName::set_Name(string)
    IL_0012:  nop
    IL_0013:  call       [mscorlib]System.AppDomain [mscorlib]System.Threading.Thread::GetDomain()
    IL_0018:  stloc.1
    IL_0019:  ldloc.1
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.3
    IL_001c:  callvirt   instance [mscorlib]System.Reflection.Emit.AssemblyBuilder [mscorlib]System.AppDomain::DefineDynamicAssembly([mscorlib]System.Reflection.AssemblyName,
                                                                                                                                     [mscorlib]System.Reflection.Emit.AssemblyBuilderAccess)
    IL_0021:  stloc.2
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance string [mscorlib]System.Reflection.AssemblyName::get_Name()
    IL_0028:  ldstr      ".exe"
    IL_002d:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0032:  stloc.3
    IL_0033:  ldloc.2
    IL_0034:  ldloc.0
    IL_0035:  callvirt   instance string [mscorlib]System.Reflection.AssemblyName::get_Name()
    IL_003a:  ldloc.3
    IL_003b:  callvirt   instance [mscorlib]System.Reflection.Emit.ModuleBuilder [mscorlib]System.Reflection.Emit.AssemblyBuilder::DefineDynamicModule(string,
                                                                                                                                                       string)
    IL_0040:  stloc.s    V_4
    IL_0042:  ldloc.s    V_4
    IL_0044:  ldstr      "Hello.Emitted"
    IL_0049:  ldc.i4.1
    IL_004a:  callvirt   instance [mscorlib]System.Reflection.Emit.TypeBuilder [mscorlib]System.Reflection.Emit.ModuleBuilder::DefineType(string,
                                                                                                                                          [mscorlib]System.Reflection.TypeAttributes)
    IL_004f:  stloc.s    V_5
    IL_0051:  ldloc.s    V_5
    IL_0053:  ldstr      "Main"
    IL_0058:  ldc.i4.s   22
    IL_005a:  ldtoken    [mscorlib]System.Int32
    IL_005f:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0064:  ldc.i4.1
    IL_0065:  newarr     [mscorlib]System.Type
    IL_006a:  dup
    IL_006b:  ldc.i4.0
    IL_006c:  ldtoken    string[]
    IL_0071:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0076:  stelem.ref
    IL_0077:  callvirt   instance [mscorlib]System.Reflection.Emit.MethodBuilder [mscorlib]System.Reflection.Emit.TypeBuilder::DefineMethod(string,
                                                                                                                                            [mscorlib]System.Reflection.MethodAttributes,
                                                                                                                                            [mscorlib]System.Type,
                                                                                                                                            [mscorlib]System.Type[])
    IL_007c:  stloc.s    V_6
    IL_007e:  ldloc.s    V_6
    IL_0080:  callvirt   instance [mscorlib]System.Reflection.Emit.ILGenerator [mscorlib]System.Reflection.Emit.MethodBuilder::GetILGenerator()
    IL_0085:  stloc.s    V_7
    IL_0087:  ldloc.s    V_7
    IL_0089:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldstr
    IL_008e:  ldstr      "Ola {0}"
    IL_0093:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          string)
    IL_0098:  nop
    IL_0099:  ldloc.s    V_7
    IL_009b:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldc_I4_S
    IL_00a0:  ldc.i4.s   10
    IL_00a2:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          int32)
    IL_00a7:  nop
    IL_00a8:  ldloc.s    V_7
    IL_00aa:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Box
    IL_00af:  ldtoken    [mscorlib]System.Int32
    IL_00b4:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_00b9:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Type)
    IL_00be:  nop
    IL_00bf:  ldloc.s    V_7
    IL_00c1:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Call
    IL_00c6:  ldtoken    [mscorlib]System.Console
    IL_00cb:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_00d0:  ldstr      "WriteLine"
    IL_00d5:  ldc.i4.2
    IL_00d6:  newarr     [mscorlib]System.Type
    IL_00db:  dup
    IL_00dc:  ldc.i4.0
    IL_00dd:  ldtoken    [mscorlib]System.String
    IL_00e2:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_00e7:  stelem.ref
    IL_00e8:  dup
    IL_00e9:  ldc.i4.1
    IL_00ea:  ldtoken    [mscorlib]System.Object
    IL_00ef:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_00f4:  stelem.ref
    IL_00f5:  call       instance [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string,
                                                                                                          [mscorlib]System.Type[])
    IL_00fa:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Reflection.MethodInfo)
    IL_00ff:  nop
    IL_0100:  ldloc.s    V_7
    IL_0102:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldc_I4_0
    IL_0107:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode)
    IL_010c:  nop
    IL_010d:  ldloc.s    V_7
    IL_010f:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ret
    IL_0114:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode)
    IL_0119:  nop
    IL_011a:  ldloc.s    V_5
    IL_011c:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Reflection.Emit.TypeBuilder::CreateType()
    IL_0121:  stloc.s    V_8
    IL_0123:  ldloc.2
    IL_0124:  ldloc.s    V_6
    IL_0126:  ldc.i4.2
    IL_0127:  callvirt   instance void [mscorlib]System.Reflection.Emit.AssemblyBuilder::SetEntryPoint([mscorlib]System.Reflection.MethodInfo,
                                                                                                       [mscorlib]System.Reflection.Emit.PEFileKinds)
    IL_012c:  nop
    IL_012d:  ldloc.2
    IL_012e:  ldloc.3
    IL_012f:  callvirt   instance void [mscorlib]System.Reflection.Emit.AssemblyBuilder::Save(string)
    IL_0134:  nop
    IL_0135:  ldstr      "Execute assembly with name \"HelloReflectionEmit.exe\""
    IL_013a:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_013f:  nop
    IL_0140:  ldloc.1
    IL_0141:  ldloc.3
    IL_0142:  callvirt   instance int32 [mscorlib]System.AppDomain::ExecuteAssembly(string)
    IL_0147:  pop
    IL_0148:  ldstr      "Finished executing {0}"
    IL_014d:  ldloc.0
    IL_014e:  callvirt   instance string [mscorlib]System.Reflection.AssemblyName::get_Name()
    IL_0153:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0158:  nop
    IL_0159:  ldloc.3
    IL_015a:  call       void Aulas1314.ReflectionEmitIntro::LoadAssembly(string)
    IL_015f:  nop
    IL_0160:  ret
  } // end of method ReflectionEmitIntro::Main1

  .method private hidebysig static void  InvokeMainMethod([mscorlib]System.Type 'type') cil managed
  {
    // Code size       111 (0x6f)
    .maxstack  3
    .locals init ([mscorlib]System.Reflection.MethodInfo V_0,
             [mscorlib]System.Reflection.MethodInfo[] V_1,
             int32 V_2,
             [mscorlib]System.Reflection.MethodInfo V_3,
             bool V_4)
    IL_0000:  nop
    IL_0001:  ldstr      "Type {0}"
    IL_0006:  ldarg.0
    IL_0007:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_000c:  nop
    IL_000d:  nop
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.s   60
    IL_0011:  callvirt   instance [mscorlib]System.Reflection.MethodInfo[] [mscorlib]System.Type::GetMethods([mscorlib]System.Reflection.BindingFlags)
    IL_0016:  stloc.1
    IL_0017:  ldc.i4.0
    IL_0018:  stloc.2
    IL_0019:  br.s       IL_0036

    IL_001b:  ldloc.1
    IL_001c:  ldloc.2
    IL_001d:  ldelem.ref
    IL_001e:  stloc.3
    IL_001f:  nop
    IL_0020:  ldstr      "Method {0}"
    IL_0025:  ldloc.3
    IL_0026:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_002b:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0030:  nop
    IL_0031:  nop
    IL_0032:  ldloc.2
    IL_0033:  ldc.i4.1
    IL_0034:  add
    IL_0035:  stloc.2
    IL_0036:  ldloc.2
    IL_0037:  ldloc.1
    IL_0038:  ldlen
    IL_0039:  conv.i4
    IL_003a:  blt.s      IL_001b

    IL_003c:  ldstr      "Invoking Main:"
    IL_0041:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0046:  nop
    IL_0047:  ldarg.0
    IL_0048:  ldstr      "Main"
    IL_004d:  callvirt   instance [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string)
    IL_0052:  stloc.0
    IL_0053:  ldloc.0
    IL_0054:  ldnull
    IL_0055:  call       bool [mscorlib]System.Reflection.MethodInfo::op_Inequality([mscorlib]System.Reflection.MethodInfo,
                                                                                    [mscorlib]System.Reflection.MethodInfo)
    IL_005a:  stloc.s    V_4
    IL_005c:  ldloc.s    V_4
    IL_005e:  brfalse.s  IL_006e

    IL_0060:  ldloc.0
    IL_0061:  ldnull
    IL_0062:  ldc.i4.1
    IL_0063:  newarr     [mscorlib]System.Object
    IL_0068:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_006d:  pop
    IL_006e:  ret
  } // end of method ReflectionEmitIntro::InvokeMainMethod

  .method private hidebysig static void  ReflectOnAssembly([mscorlib]System.Reflection.AssemblyName asmName,
                                                           [mscorlib]System.Reflection.Emit.AssemblyBuilder asmBuilder) cil managed
  {
    // Code size       182 (0xb6)
    .maxstack  3
    .locals init ([mscorlib]System.Type[] V_0,
             int32 V_1,
             [mscorlib]System.Type V_2,
             [mscorlib]System.Reflection.MethodInfo V_3,
             [mscorlib]System.Reflection.MethodInfo[] V_4,
             int32 V_5,
             [mscorlib]System.Reflection.MethodInfo V_6,
             bool V_7)
    IL_0000:  nop
    IL_0001:  ldstr      "Now, use reflection on assembly {0}:"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance string [mscorlib]System.Reflection.AssemblyName::get_Name()
    IL_000c:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance [mscorlib]System.Type[] [mscorlib]System.Reflection.Assembly::GetTypes()
    IL_0019:  stloc.0
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.1
    IL_001c:  br         IL_00ac

    IL_0021:  ldloc.0
    IL_0022:  ldloc.1
    IL_0023:  ldelem.ref
    IL_0024:  stloc.2
    IL_0025:  nop
    IL_0026:  ldstr      "Type {0}"
    IL_002b:  ldloc.2
    IL_002c:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0031:  nop
    IL_0032:  nop
    IL_0033:  ldloc.2
    IL_0034:  ldc.i4.s   60
    IL_0036:  callvirt   instance [mscorlib]System.Reflection.MethodInfo[] [mscorlib]System.Type::GetMethods([mscorlib]System.Reflection.BindingFlags)
    IL_003b:  stloc.s    V_4
    IL_003d:  ldc.i4.0
    IL_003e:  stloc.s    V_5
    IL_0040:  br.s       IL_0063

    IL_0042:  ldloc.s    V_4
    IL_0044:  ldloc.s    V_5
    IL_0046:  ldelem.ref
    IL_0047:  stloc.s    V_6
    IL_0049:  nop
    IL_004a:  ldstr      "Method {0}"
    IL_004f:  ldloc.s    V_6
    IL_0051:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0056:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_005b:  nop
    IL_005c:  nop
    IL_005d:  ldloc.s    V_5
    IL_005f:  ldc.i4.1
    IL_0060:  add
    IL_0061:  stloc.s    V_5
    IL_0063:  ldloc.s    V_5
    IL_0065:  ldloc.s    V_4
    IL_0067:  ldlen
    IL_0068:  conv.i4
    IL_0069:  blt.s      IL_0042

    IL_006b:  ldstr      "Invoking Main:"
    IL_0070:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0075:  nop
    IL_0076:  ldarg.1
    IL_0077:  ldstr      "Hello.Emitted"
    IL_007c:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Reflection.Assembly::GetType(string)
    IL_0081:  ldstr      "Main"
    IL_0086:  callvirt   instance [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string)
    IL_008b:  stloc.3
    IL_008c:  ldloc.3
    IL_008d:  ldnull
    IL_008e:  call       bool [mscorlib]System.Reflection.MethodInfo::op_Inequality([mscorlib]System.Reflection.MethodInfo,
                                                                                    [mscorlib]System.Reflection.MethodInfo)
    IL_0093:  stloc.s    V_7
    IL_0095:  ldloc.s    V_7
    IL_0097:  brfalse.s  IL_00a7

    IL_0099:  ldloc.3
    IL_009a:  ldnull
    IL_009b:  ldc.i4.1
    IL_009c:  newarr     [mscorlib]System.Object
    IL_00a1:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_00a6:  pop
    IL_00a7:  nop
    IL_00a8:  ldloc.1
    IL_00a9:  ldc.i4.1
    IL_00aa:  add
    IL_00ab:  stloc.1
    IL_00ac:  ldloc.1
    IL_00ad:  ldloc.0
    IL_00ae:  ldlen
    IL_00af:  conv.i4
    IL_00b0:  blt        IL_0021

    IL_00b5:  ret
  } // end of method ReflectionEmitIntro::ReflectOnAssembly

  .method private hidebysig static void  LoadAssembly(string filename) cil managed
  {
    // Code size       64 (0x40)
    .maxstack  2
    .locals init ([mscorlib]System.Reflection.Assembly V_0,
             [mscorlib]System.Type[] V_1,
             [mscorlib]System.Type[] V_2,
             int32 V_3,
             [mscorlib]System.Type V_4)
    IL_0000:  nop
    IL_0001:  ldstr      "[LoadAssembly]:"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldarg.0
    IL_000d:  call       [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Assembly::LoadFrom(string)
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  callvirt   instance [mscorlib]System.Type[] [mscorlib]System.Reflection.Assembly::GetTypes()
    IL_0019:  stloc.1
    IL_001a:  nop
    IL_001b:  ldloc.1
    IL_001c:  stloc.2
    IL_001d:  ldc.i4.0
    IL_001e:  stloc.3
    IL_001f:  br.s       IL_0039

    IL_0021:  ldloc.2
    IL_0022:  ldloc.3
    IL_0023:  ldelem.ref
    IL_0024:  stloc.s    V_4
    IL_0026:  nop
    IL_0027:  ldloc.s    V_4
    IL_0029:  callvirt   instance string [mscorlib]System.Type::get_FullName()
    IL_002e:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0033:  nop
    IL_0034:  nop
    IL_0035:  ldloc.3
    IL_0036:  ldc.i4.1
    IL_0037:  add
    IL_0038:  stloc.3
    IL_0039:  ldloc.3
    IL_003a:  ldloc.2
    IL_003b:  ldlen
    IL_003c:  conv.i4
    IL_003d:  blt.s      IL_0021

    IL_003f:  ret
  } // end of method ReflectionEmitIntro::LoadAssembly

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method ReflectionEmitIntro::.ctor

} // end of class Aulas1314.ReflectionEmitIntro


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
