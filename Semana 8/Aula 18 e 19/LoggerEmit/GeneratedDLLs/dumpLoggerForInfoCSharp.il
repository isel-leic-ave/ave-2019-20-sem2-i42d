
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly LoggerEmit
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0A 4C 6F 67 67 65 72 45 6D 69 74 00 00 )    // ...LoggerEmit..
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
  .ver 1:0:7415:18753
}
.module LoggerEmit.exe
// MVID: {4171E5F0-CD3F-408B-A312-5C13C763ADFD}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class public abstract auto ansi sealed beforefieldinit GenLog
       extends [mscorlib]System.Object
{
  .field private static initonly [mscorlib]System.Collections.Generic.Dictionary`2<[mscorlib]System.Reflection.TypeInfo,class ILog> loggers
  .method public hidebysig static class ILog 
          For([mscorlib]System.Reflection.TypeInfo typeInfo) cil managed
  {
    // Code size       42 (0x2a)
    .maxstack  8
    IL_0000:  ldsfld     [mscorlib]System.Collections.Generic.Dictionary`2<[mscorlib]System.Reflection.TypeInfo,class ILog> GenLog::loggers
    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance bool [mscorlib]System.Collections.Generic.Dictionary`2<[mscorlib]System.Reflection.TypeInfo,class ILog>::ContainsKey(!0)
    IL_000b:  brtrue.s   IL_001e

    IL_000d:  ldsfld     [mscorlib]System.Collections.Generic.Dictionary`2<[mscorlib]System.Reflection.TypeInfo,class ILog> GenLog::loggers
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       class ILog GenLog::GenerateFor([mscorlib]System.Reflection.TypeInfo)
    IL_0019:  callvirt   instance void [mscorlib]System.Collections.Generic.Dictionary`2<[mscorlib]System.Reflection.TypeInfo,class ILog>::set_Item(!0,
                                                                                                                                                    !1)
    IL_001e:  ldsfld     [mscorlib]System.Collections.Generic.Dictionary`2<[mscorlib]System.Reflection.TypeInfo,class ILog> GenLog::loggers
    IL_0023:  ldarg.0
    IL_0024:  callvirt   instance !1 [mscorlib]System.Collections.Generic.Dictionary`2<[mscorlib]System.Reflection.TypeInfo,class ILog>::get_Item(!0)
    IL_0029:  ret
  } // end of method GenLog::For

  .method private hidebysig static class ILog 
          GenerateFor([mscorlib]System.Reflection.TypeInfo typeInfo) cil managed
  {
    // Code size       174 (0xae)
    .maxstack  8
    .locals init (string V_0,
             string V_1,
             string V_2,
             string V_3,
             [mscorlib]System.Reflection.Emit.AssemblyBuilder V_4,
             [mscorlib]System.Reflection.Emit.TypeBuilder V_5)
    IL_0000:  ldstr      "LoggerFor"
    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_000b:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0010:  dup
    IL_0011:  stloc.0
    IL_0012:  dup
    IL_0013:  stloc.1
    IL_0014:  dup
    IL_0015:  stloc.2
    IL_0016:  ldstr      ".dll"
    IL_001b:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_0020:  stloc.3
    IL_0021:  ldloc.0
    IL_0022:  newobj     instance void [mscorlib]System.Reflection.AssemblyName::.ctor(string)
    IL_0027:  ldc.i4.3
    IL_0028:  call       [mscorlib]System.Reflection.Emit.AssemblyBuilder [mscorlib]System.Reflection.Emit.AssemblyBuilder::DefineDynamicAssembly([mscorlib]System.Reflection.AssemblyName,
                                                                                                                                                  [mscorlib]System.Reflection.Emit.AssemblyBuilderAccess)
    IL_002d:  stloc.s    V_4
    IL_002f:  ldloc.s    V_4
    IL_0031:  ldloc.1
    IL_0032:  ldloc.3
    IL_0033:  callvirt   instance [mscorlib]System.Reflection.Emit.ModuleBuilder [mscorlib]System.Reflection.Emit.AssemblyBuilder::DefineDynamicModule(string,
                                                                                                                                                       string)
    IL_0038:  ldloc.2
    IL_0039:  callvirt   instance [mscorlib]System.Reflection.Emit.TypeBuilder [mscorlib]System.Reflection.Emit.ModuleBuilder::DefineType(string)
    IL_003e:  stloc.s    V_5
    IL_0040:  ldloc.s    V_5
    IL_0042:  ldtoken    ILog
    IL_0047:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_004c:  callvirt   instance void [mscorlib]System.Reflection.Emit.TypeBuilder::AddInterfaceImplementation([mscorlib]System.Type)
    IL_0051:  ldloc.s    V_5
    IL_0053:  ldstr      "Log"
    IL_0058:  ldc.i4.s   70
    IL_005a:  ldtoken    [mscorlib]System.Void
    IL_005f:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0064:  ldc.i4.2
    IL_0065:  newarr     [mscorlib]System.Type
    IL_006a:  dup
    IL_006b:  ldc.i4.0
    IL_006c:  ldtoken    [mscorlib]System.Object
    IL_0071:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0076:  stelem.ref
    IL_0077:  dup
    IL_0078:  ldc.i4.1
    IL_0079:  ldtoken    [mscorlib]System.Int32
    IL_007e:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0083:  stelem.ref
    IL_0084:  callvirt   instance [mscorlib]System.Reflection.Emit.MethodBuilder [mscorlib]System.Reflection.Emit.TypeBuilder::DefineMethod(string,
                                                                                                                                            [mscorlib]System.Reflection.MethodAttributes,
                                                                                                                                            [mscorlib]System.Type,
                                                                                                                                            [mscorlib]System.Type[])
    IL_0089:  ldarg.0
    IL_008a:  call       void GenLog::ImplementLogMethod([mscorlib]System.Reflection.Emit.MethodBuilder,
                                                         [mscorlib]System.Reflection.TypeInfo)
    IL_008f:  ldloc.s    V_5
    IL_0091:  callvirt   instance [mscorlib]System.Reflection.TypeInfo [mscorlib]System.Reflection.Emit.TypeBuilder::CreateTypeInfo()
    IL_0096:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Reflection.TypeInfo::AsType()
    IL_009b:  ldloc.s    V_4
    IL_009d:  ldloc.3
    IL_009e:  callvirt   instance void [mscorlib]System.Reflection.Emit.AssemblyBuilder::Save(string)
    IL_00a3:  call       object [mscorlib]System.Activator::CreateInstance([mscorlib]System.Type)
    IL_00a8:  castclass  ILog
    IL_00ad:  ret
  } // end of method GenLog::GenerateFor

  .method private hidebysig static void  ImplementLogMethod([mscorlib]System.Reflection.Emit.MethodBuilder metBuilder,
                                                            [mscorlib]System.Reflection.TypeInfo typeInfo) cil managed
  {
    // Code size       506 (0x1fa)
    .maxstack  8
    .locals init ([mscorlib]System.Type V_0,
             [mscorlib]System.Reflection.Emit.ILGenerator V_1,
             [mscorlib]System.Reflection.Emit.LocalBuilder V_2,
             [mscorlib]System.Reflection.FieldInfo[] V_3,
             int32 V_4,
             [mscorlib]System.Reflection.FieldInfo V_5,
             [mscorlib]System.Reflection.Emit.Label V_6,
             int32 V_7)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Reflection.TypeInfo::AsType()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance [mscorlib]System.Reflection.Emit.ILGenerator [mscorlib]System.Reflection.Emit.MethodBuilder::GetILGenerator()
    IL_000d:  stloc.1
    IL_000e:  ldloc.1
    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance [mscorlib]System.Reflection.Emit.LocalBuilder [mscorlib]System.Reflection.Emit.ILGenerator::DeclareLocal([mscorlib]System.Type)
    IL_0015:  stloc.2
    IL_0016:  ldloc.1
    IL_0017:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldarg_1
    IL_001c:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode)
    IL_0021:  ldloc.1
    IL_0022:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Castclass
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Type)
    IL_002d:  ldloc.1
    IL_002e:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Stloc
    IL_0033:  ldloc.2
    IL_0034:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Reflection.Emit.LocalBuilder)
    IL_0039:  ldloc.1
    IL_003a:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldstr
    IL_003f:  ldarg.1
    IL_0040:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0045:  ldstr      " { "
    IL_004a:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_004f:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          string)
    IL_0054:  ldloc.1
    IL_0055:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Call
    IL_005a:  ldtoken    [mscorlib]System.Console
    IL_005f:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0064:  call       [mscorlib]System.Reflection.TypeInfo [mscorlib]System.Reflection.IntrospectionExtensions::GetTypeInfo([mscorlib]System.Type)
    IL_0069:  ldstr      "Write"
    IL_006e:  ldc.i4.1
    IL_006f:  newarr     [mscorlib]System.Type
    IL_0074:  dup
    IL_0075:  ldc.i4.0
    IL_0076:  ldtoken    [mscorlib]System.String
    IL_007b:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0080:  stelem.ref
    IL_0081:  callvirt   instance [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string,
                                                                                                          [mscorlib]System.Type[])
    IL_0086:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Reflection.MethodInfo)
    IL_008b:  ldarg.1
    IL_008c:  ldc.i4.s   116
    IL_008e:  callvirt   instance [mscorlib]System.Reflection.FieldInfo[] [mscorlib]System.Type::GetFields([mscorlib]System.Reflection.BindingFlags)
    IL_0093:  stloc.3
    IL_0094:  ldc.i4.0
    IL_0095:  stloc.s    V_4
    IL_0097:  br         IL_01a0

    IL_009c:  ldloc.3
    IL_009d:  ldloc.s    V_4
    IL_009f:  ldelem.ref
    IL_00a0:  stloc.s    V_5
    IL_00a2:  ldloc.s    V_5
    IL_00a4:  call       bool LogOps::CanLog([mscorlib]System.Reflection.FieldInfo)
    IL_00a9:  brfalse    IL_019a

    IL_00ae:  ldloc.1
    IL_00af:  callvirt   instance [mscorlib]System.Reflection.Emit.Label [mscorlib]System.Reflection.Emit.ILGenerator::DefineLabel()
    IL_00b4:  stloc.s    V_6
    IL_00b6:  ldloc.s    V_5
    IL_00b8:  call       int32 LogOps::GetLogLevel([mscorlib]System.Reflection.FieldInfo)
    IL_00bd:  stloc.s    V_7
    IL_00bf:  ldloc.s    V_7
    IL_00c1:  ldc.i4.0
    IL_00c2:  ble.s      IL_00f4

    IL_00c4:  ldloc.1
    IL_00c5:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldc_I4
    IL_00ca:  ldloc.s    V_7
    IL_00cc:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          int32)
    IL_00d1:  ldloc.1
    IL_00d2:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldarg_2
    IL_00d7:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode)
    IL_00dc:  ldloc.1
    IL_00dd:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Cgt
    IL_00e2:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode)
    IL_00e7:  ldloc.1
    IL_00e8:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Brtrue
    IL_00ed:  ldloc.s    V_6
    IL_00ef:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Reflection.Emit.Label)
    IL_00f4:  ldloc.1
    IL_00f5:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldstr
    IL_00fa:  ldloc.s    V_5
    IL_00fc:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0101:  ldstr      ": {0}; "
    IL_0106:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_010b:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          string)
    IL_0110:  ldloc.1
    IL_0111:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldloc
    IL_0116:  ldloc.2
    IL_0117:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Reflection.Emit.LocalBuilder)
    IL_011c:  ldloc.1
    IL_011d:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldfld
    IL_0122:  ldloc.s    V_5
    IL_0124:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Reflection.FieldInfo)
    IL_0129:  ldloc.s    V_5
    IL_012b:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Reflection.FieldInfo::get_FieldType()
    IL_0130:  call       [mscorlib]System.Reflection.TypeInfo [mscorlib]System.Reflection.IntrospectionExtensions::GetTypeInfo([mscorlib]System.Type)
    IL_0135:  callvirt   instance bool [mscorlib]System.Type::get_IsValueType()
    IL_013a:  brfalse.s  IL_014e

    IL_013c:  ldloc.1
    IL_013d:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Box
    IL_0142:  ldloc.s    V_5
    IL_0144:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Reflection.FieldInfo::get_FieldType()
    IL_0149:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Type)
    IL_014e:  ldloc.1
    IL_014f:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Call
    IL_0154:  ldtoken    [mscorlib]System.Console
    IL_0159:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_015e:  call       [mscorlib]System.Reflection.TypeInfo [mscorlib]System.Reflection.IntrospectionExtensions::GetTypeInfo([mscorlib]System.Type)
    IL_0163:  ldstr      "Write"
    IL_0168:  ldc.i4.2
    IL_0169:  newarr     [mscorlib]System.Type
    IL_016e:  dup
    IL_016f:  ldc.i4.0
    IL_0170:  ldtoken    [mscorlib]System.String
    IL_0175:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_017a:  stelem.ref
    IL_017b:  dup
    IL_017c:  ldc.i4.1
    IL_017d:  ldtoken    [mscorlib]System.Object
    IL_0182:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_0187:  stelem.ref
    IL_0188:  callvirt   instance [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string,
                                                                                                          [mscorlib]System.Type[])
    IL_018d:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Reflection.MethodInfo)
    IL_0192:  ldloc.1
    IL_0193:  ldloc.s    V_6
    IL_0195:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::MarkLabel([mscorlib]System.Reflection.Emit.Label)
    IL_019a:  ldloc.s    V_4
    IL_019c:  ldc.i4.1
    IL_019d:  add
    IL_019e:  stloc.s    V_4
    IL_01a0:  ldloc.s    V_4
    IL_01a2:  ldloc.3
    IL_01a3:  ldlen
    IL_01a4:  conv.i4
    IL_01a5:  blt        IL_009c

    IL_01aa:  ldloc.1
    IL_01ab:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ldc_I4_S
    IL_01b0:  ldc.i4.s   125
    IL_01b2:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          int32)
    IL_01b7:  ldloc.1
    IL_01b8:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Call
    IL_01bd:  ldtoken    [mscorlib]System.Console
    IL_01c2:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_01c7:  call       [mscorlib]System.Reflection.TypeInfo [mscorlib]System.Reflection.IntrospectionExtensions::GetTypeInfo([mscorlib]System.Type)
    IL_01cc:  ldstr      "WriteLine"
    IL_01d1:  ldc.i4.1
    IL_01d2:  newarr     [mscorlib]System.Type
    IL_01d7:  dup
    IL_01d8:  ldc.i4.0
    IL_01d9:  ldtoken    [mscorlib]System.Char
    IL_01de:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_01e3:  stelem.ref
    IL_01e4:  callvirt   instance [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string,
                                                                                                          [mscorlib]System.Type[])
    IL_01e9:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode,
                                                                                          [mscorlib]System.Reflection.MethodInfo)
    IL_01ee:  ldloc.1
    IL_01ef:  ldsfld     [mscorlib]System.Reflection.Emit.OpCode [mscorlib]System.Reflection.Emit.OpCodes::Ret
    IL_01f4:  callvirt   instance void [mscorlib]System.Reflection.Emit.ILGenerator::Emit([mscorlib]System.Reflection.Emit.OpCode)
    IL_01f9:  ret
  } // end of method GenLog::ImplementLogMethod

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void [mscorlib]System.Collections.Generic.Dictionary`2<[mscorlib]System.Reflection.TypeInfo,class ILog>::.ctor()
    IL_0005:  stsfld     [mscorlib]System.Collections.Generic.Dictionary`2<[mscorlib]System.Reflection.TypeInfo,class ILog> GenLog::loggers
    IL_000a:  ret
  } // end of method GenLog::.cctor

} // end of class GenLog

.class public auto ansi beforefieldinit DontLogAttribute
       extends [mscorlib]System.Attribute
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method DontLogAttribute::.ctor

} // end of class DontLogAttribute

.class public auto ansi beforefieldinit LevelAttribute
       extends [mscorlib]System.Attribute
{
  .field private int32 '<Level>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_Level() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 LevelAttribute::'<Level>k__BackingField'
    IL_0006:  ret
  } // end of method LevelAttribute::get_Level

  .method private hidebysig specialname instance void 
          set_Level(int32 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 LevelAttribute::'<Level>k__BackingField'
    IL_0007:  ret
  } // end of method LevelAttribute::set_Level

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 level) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void LevelAttribute::set_Level(int32)
    IL_000d:  ret
  } // end of method LevelAttribute::.ctor

  .property instance int32 Level()
  {
    .get instance int32 LevelAttribute::get_Level()
    .set instance void LevelAttribute::set_Level(int32)
  } // end of property LevelAttribute::Level
} // end of class LevelAttribute

.class interface public abstract auto ansi ILog
{
  .method public hidebysig newslot abstract virtual 
          instance void  Log(object obj,
                             int32 level) cil managed
  {
  } // end of method ILog::Log

} // end of class ILog

.class public abstract auto ansi sealed beforefieldinit LogOps
       extends [mscorlib]System.Object
{
  .field public static literal [mscorlib]System.Reflection.BindingFlags ALL_INSTANCE = int32(0x00000074)
  .method public hidebysig static bool  CanLog([mscorlib]System.Reflection.FieldInfo fi) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldtoken    DontLogAttribute
    IL_0006:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_000b:  ldc.i4.0
    IL_000c:  callvirt   instance bool [mscorlib]System.Reflection.MemberInfo::IsDefined([mscorlib]System.Type,
                                                                                         bool)
    IL_0011:  ldc.i4.0
    IL_0012:  ceq
    IL_0014:  ret
  } // end of method LogOps::CanLog

  .method public hidebysig static int32  GetLogLevel([mscorlib]System.Reflection.FieldInfo fi) cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  3
    .locals init ([mscorlib]System.Attribute[] V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldtoken    LevelAttribute
    IL_0006:  call       [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle([mscorlib]System.RuntimeTypeHandle)
    IL_000b:  ldc.i4.0
    IL_000c:  callvirt   instance object[] [mscorlib]System.Reflection.MemberInfo::GetCustomAttributes([mscorlib]System.Type,
                                                                                                       bool)
    IL_0011:  castclass  [mscorlib]System.Attribute[]
    IL_0016:  stloc.0
    IL_0017:  ldloc.0
    IL_0018:  ldlen
    IL_0019:  brfalse.s  IL_0029

    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.0
    IL_001d:  ldelem.ref
    IL_001e:  castclass  LevelAttribute
    IL_0023:  callvirt   instance int32 LevelAttribute::get_Level()
    IL_0028:  ret

    IL_0029:  ldc.i4.m1
    IL_002a:  ret
  } // end of method LogOps::GetLogLevel

} // end of class LogOps

.class public auto ansi beforefieldinit RefLog
       extends [mscorlib]System.Object
       implements ILog
{
  .method public hidebysig newslot virtual final 
          instance void  Log(object obj,
                             int32 level) cil managed
  {
    // Code size       106 (0x6a)
    .maxstack  4
    .locals init ([mscorlib]System.Reflection.FieldInfo[] V_0,
             int32 V_1,
             [mscorlib]System.Reflection.FieldInfo V_2)
    IL_0000:  ldstr      "{0} {{ "
    IL_0005:  ldarg.1
    IL_0006:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_000b:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0010:  call       void [mscorlib]System.Console::Write(string,
                                                              object)
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_001b:  call       [mscorlib]System.Reflection.TypeInfo [mscorlib]System.Reflection.IntrospectionExtensions::GetTypeInfo([mscorlib]System.Type)
    IL_0020:  ldc.i4.s   116
    IL_0022:  callvirt   instance [mscorlib]System.Reflection.FieldInfo[] [mscorlib]System.Type::GetFields([mscorlib]System.Reflection.BindingFlags)
    IL_0027:  stloc.0
    IL_0028:  ldc.i4.0
    IL_0029:  stloc.1
    IL_002a:  br.s       IL_005c

    IL_002c:  ldloc.0
    IL_002d:  ldloc.1
    IL_002e:  ldelem.ref
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  call       bool LogOps::CanLog([mscorlib]System.Reflection.FieldInfo)
    IL_0036:  brfalse.s  IL_0058

    IL_0038:  ldloc.2
    IL_0039:  call       int32 LogOps::GetLogLevel([mscorlib]System.Reflection.FieldInfo)
    IL_003e:  ldarg.2
    IL_003f:  bgt.s      IL_0058

    IL_0041:  ldstr      "{0}: {1}; "
    IL_0046:  ldloc.2
    IL_0047:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_004c:  ldloc.2
    IL_004d:  ldarg.1
    IL_004e:  callvirt   instance object [mscorlib]System.Reflection.FieldInfo::GetValue(object)
    IL_0053:  call       void [mscorlib]System.Console::Write(string,
                                                              object,
                                                              object)
    IL_0058:  ldloc.1
    IL_0059:  ldc.i4.1
    IL_005a:  add
    IL_005b:  stloc.1
    IL_005c:  ldloc.1
    IL_005d:  ldloc.0
    IL_005e:  ldlen
    IL_005f:  conv.i4
    IL_0060:  blt.s      IL_002c

    IL_0062:  ldc.i4.s   125
    IL_0064:  call       void [mscorlib]System.Console::WriteLine(char)
    IL_0069:  ret
  } // end of method RefLog::Log

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method RefLog::.ctor

} // end of class RefLog

.class public auto ansi beforefieldinit Info
       extends [mscorlib]System.Object
{
  .field public int32 a
  .field public int32 b
  .field public int32 c
  .custom instance void LevelAttribute::.ctor(int32) = ( 01 00 03 00 00 00 00 00 ) 
  .field public int32 d
  .custom instance void DontLogAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 a,
                               int32 b,
                               int32 c,
                               int32 d) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Info::a
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Info::b
    IL_0014:  ldarg.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      int32 Info::c
    IL_001b:  ldarg.0
    IL_001c:  ldarg.s    d
    IL_001e:  stfld      int32 Info::d
    IL_0023:  ret
  } // end of method Info::.ctor

} // end of class Info

.class public auto ansi beforefieldinit User
       extends [mscorlib]System.Object
{
  .field public string username
  .custom instance void LevelAttribute::.ctor(int32) = ( 01 00 01 00 00 00 00 00 ) 
  .field public string password
  .custom instance void DontLogAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public string name
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string uname,
                               string passwd,
                               string fullname) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      string User::username
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      string User::password
    IL_0014:  ldarg.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      string User::name
    IL_001b:  ret
  } // end of method User::.ctor

} // end of class User

.class public auto ansi beforefieldinit Logs
       extends [mscorlib]System.Object
{
  .field private static initonly class ILog theRefLog
  .method private hidebysig static class ILog 
          GetLogger(object obj) cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  newobj     instance void LoggerEmit.Code.Logger.LoggerForInfo::.ctor()
    IL_0005:  ret
  } // end of method Logs::GetLogger

  .method private hidebysig static void  Log(object obj,
                                             int32 level) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class ILog Logs::GetLogger(object)
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance void ILog::Log(object,
                                                 int32)
    IL_000d:  ret
  } // end of method Logs::Log

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       44 (0x2c)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  ldc.i4.2
    IL_0002:  ldc.i4.3
    IL_0003:  ldc.i4.4
    IL_0004:  newobj     instance void Info::.ctor(int32,
                                                   int32,
                                                   int32,
                                                   int32)
    IL_0009:  ldstr      "jtrindade"
    IL_000e:  ldstr      "1234"
    IL_0013:  ldstr      "Joao Trindade"
    IL_0018:  newobj     instance void User::.ctor(string,
                                                   string,
                                                   string)
    IL_001d:  pop
    IL_001e:  dup
    IL_001f:  ldc.i4.2
    IL_0020:  call       void Logs::Log(object,
                                        int32)
    IL_0025:  ldc.i4.5
    IL_0026:  call       void Logs::Log(object,
                                        int32)
    IL_002b:  ret
  } // end of method Logs::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Logs::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void RefLog::.ctor()
    IL_0005:  stsfld     class ILog Logs::theRefLog
    IL_000a:  ret
  } // end of method Logs::.cctor

} // end of class Logs

.class public auto ansi beforefieldinit LoggerEmit.Code.Logger.LoggerForInfo
       extends [mscorlib]System.Object
       implements ILog
{
  .method public hidebysig newslot virtual final 
          instance void  Log(object obj,
                             int32 level) cil managed
  {
    // Code size       95 (0x5f)
    .maxstack  2
    .locals init (class Info V_0)
    IL_0000:  ldarg.1
    IL_0001:  castclass  Info
    IL_0006:  stloc.0
    IL_0007:  ldstr      "Info { "
    IL_000c:  call       void [mscorlib]System.Console::Write(string)
    IL_0011:  ldstr      "a: {0};"
    IL_0016:  ldloc.0
    IL_0017:  ldfld      int32 Info::a
    IL_001c:  box        [mscorlib]System.Int32
    IL_0021:  call       void [mscorlib]System.Console::Write(string,
                                                              object)
    IL_0026:  ldstr      " b: {0};"
    IL_002b:  ldloc.0
    IL_002c:  ldfld      int32 Info::b
    IL_0031:  box        [mscorlib]System.Int32
    IL_0036:  call       void [mscorlib]System.Console::Write(string,
                                                              object)
    IL_003b:  ldc.i4.3
    IL_003c:  ldarg.2
    IL_003d:  bgt.s      IL_0054

    IL_003f:  ldstr      " c: {0};"
    IL_0044:  ldloc.0
    IL_0045:  ldfld      int32 Info::c
    IL_004a:  box        [mscorlib]System.Int32
    IL_004f:  call       void [mscorlib]System.Console::Write(string,
                                                              object)
    IL_0054:  ldstr      " }"
    IL_0059:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_005e:  ret
  } // end of method LoggerForInfo::Log

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method LoggerForInfo::.ctor

} // end of class LoggerEmit.Code.Logger.LoggerForInfo


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
