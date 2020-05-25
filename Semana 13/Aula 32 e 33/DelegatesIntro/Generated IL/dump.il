
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly DelegatesIntro
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0E 44 65 6C 65 67 61 74 65 73 49 6E 74 72   // ...DelegatesIntr
                                                                                              6F 00 00 )                                        // o..
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
  .ver 1:0:7447:37251
}
.module DelegatesIntro.exe
// MVID: {638C29C7-9818-4558-ABFC-2C20069CD26B}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Webao.Test.Dto.DtoSearch
       extends [mscorlib]System.Object
{
  .field private class Webao.Test.Dto.DtoResults '<Results>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance class Webao.Test.Dto.DtoResults 
          get_Results() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Webao.Test.Dto.DtoResults Webao.Test.Dto.DtoSearch::'<Results>k__BackingField'
    IL_0006:  ret
  } // end of method DtoSearch::get_Results

  .method public hidebysig specialname instance void 
          set_Results(class Webao.Test.Dto.DtoResults 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Webao.Test.Dto.DtoResults Webao.Test.Dto.DtoSearch::'<Results>k__BackingField'
    IL_0007:  ret
  } // end of method DtoSearch::set_Results

  .method public hidebysig instance [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> 
          GetArtistsList() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  1
    .locals init ([mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance class Webao.Test.Dto.DtoResults Webao.Test.Dto.DtoSearch::get_Results()
    IL_0007:  callvirt   instance class Webao.Test.Dto.DtoArtistMatches Webao.Test.Dto.DtoResults::get_ArtistMatches()
    IL_000c:  callvirt   instance [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> Webao.Test.Dto.DtoArtistMatches::get_Artist()
    IL_0011:  stloc.0
    IL_0012:  br.s       IL_0014

    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method DtoSearch::GetArtistsList

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method DtoSearch::.ctor

  .property instance class Webao.Test.Dto.DtoResults
          Results()
  {
    .get instance class Webao.Test.Dto.DtoResults Webao.Test.Dto.DtoSearch::get_Results()
    .set instance void Webao.Test.Dto.DtoSearch::set_Results(class Webao.Test.Dto.DtoResults)
  } // end of property DtoSearch::Results
} // end of class Webao.Test.Dto.DtoSearch

.class public auto ansi beforefieldinit Webao.Test.Dto.DtoResults
       extends [mscorlib]System.Object
{
  .field private class Webao.Test.Dto.DtoArtistMatches '<ArtistMatches>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance class Webao.Test.Dto.DtoArtistMatches 
          get_ArtistMatches() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Webao.Test.Dto.DtoArtistMatches Webao.Test.Dto.DtoResults::'<ArtistMatches>k__BackingField'
    IL_0006:  ret
  } // end of method DtoResults::get_ArtistMatches

  .method public hidebysig specialname instance void 
          set_ArtistMatches(class Webao.Test.Dto.DtoArtistMatches 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Webao.Test.Dto.DtoArtistMatches Webao.Test.Dto.DtoResults::'<ArtistMatches>k__BackingField'
    IL_0007:  ret
  } // end of method DtoResults::set_ArtistMatches

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method DtoResults::.ctor

  .property instance class Webao.Test.Dto.DtoArtistMatches
          ArtistMatches()
  {
    .get instance class Webao.Test.Dto.DtoArtistMatches Webao.Test.Dto.DtoResults::get_ArtistMatches()
    .set instance void Webao.Test.Dto.DtoResults::set_ArtistMatches(class Webao.Test.Dto.DtoArtistMatches)
  } // end of property DtoResults::ArtistMatches
} // end of class Webao.Test.Dto.DtoResults

.class public auto ansi beforefieldinit Webao.Test.Dto.DtoArtistMatches
       extends [mscorlib]System.Object
{
  .field private [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> '<Artist>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> 
          get_Artist() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> Webao.Test.Dto.DtoArtistMatches::'<Artist>k__BackingField'
    IL_0006:  ret
  } // end of method DtoArtistMatches::get_Artist

  .method public hidebysig specialname instance void 
          set_Artist([mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> Webao.Test.Dto.DtoArtistMatches::'<Artist>k__BackingField'
    IL_0007:  ret
  } // end of method DtoArtistMatches::set_Artist

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method DtoArtistMatches::.ctor

  .property instance [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist>
          Artist()
  {
    .get instance [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> Webao.Test.Dto.DtoArtistMatches::get_Artist()
    .set instance void Webao.Test.Dto.DtoArtistMatches::set_Artist([mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist>)
  } // end of property DtoArtistMatches::Artist
} // end of class Webao.Test.Dto.DtoArtistMatches

.class public auto ansi beforefieldinit Webao.Test.Dto.Artist
       extends [mscorlib]System.Object
{
  .field private string '<Name>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Mbid>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<Url>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor([mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Webao.Test.Dto.Artist::'<Name>k__BackingField'
    IL_0006:  ret
  } // end of method Artist::get_Name

  .method public hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Webao.Test.Dto.Artist::'<Name>k__BackingField'
    IL_0007:  ret
  } // end of method Artist::set_Name

  .method public hidebysig specialname instance string 
          get_Mbid() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Webao.Test.Dto.Artist::'<Mbid>k__BackingField'
    IL_0006:  ret
  } // end of method Artist::get_Mbid

  .method public hidebysig specialname instance void 
          set_Mbid(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Webao.Test.Dto.Artist::'<Mbid>k__BackingField'
    IL_0007:  ret
  } // end of method Artist::set_Mbid

  .method public hidebysig specialname instance string 
          get_Url() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Webao.Test.Dto.Artist::'<Url>k__BackingField'
    IL_0006:  ret
  } // end of method Artist::get_Url

  .method public hidebysig specialname instance void 
          set_Url(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Webao.Test.Dto.Artist::'<Url>k__BackingField'
    IL_0007:  ret
  } // end of method Artist::set_Url

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Artist::.ctor

  .property instance string Name()
  {
    .get instance string Webao.Test.Dto.Artist::get_Name()
    .set instance void Webao.Test.Dto.Artist::set_Name(string)
  } // end of property Artist::Name
  .property instance string Mbid()
  {
    .get instance string Webao.Test.Dto.Artist::get_Mbid()
    .set instance void Webao.Test.Dto.Artist::set_Mbid(string)
  } // end of property Artist::Mbid
  .property instance string Url()
  {
    .get instance string Webao.Test.Dto.Artist::get_Url()
    .set instance void Webao.Test.Dto.Artist::set_Url(string)
  } // end of property Artist::Url
} // end of class Webao.Test.Dto.Artist

.class private auto ansi sealed DelegatesIntro.Action
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method Action::.ctor

  .method public hidebysig newslot virtual 
          instance void  Invoke(int32 i) runtime managed
  {
  } // end of method Action::Invoke

  .method public hidebysig newslot virtual 
          instance [mscorlib]System.IAsyncResult 
          BeginInvoke(int32 i,
                      [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method Action::BeginInvoke

  .method public hidebysig newslot virtual 
          instance void  EndInvoke([mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method Action::EndInvoke

} // end of class DelegatesIntro.Action

.class private auto ansi sealed DelegatesIntro.GenericAction`1<- T>
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method GenericAction`1::.ctor

  .method public hidebysig newslot virtual 
          instance void  Invoke(!T i) runtime managed
  {
  } // end of method GenericAction`1::Invoke

  .method public hidebysig newslot virtual 
          instance [mscorlib]System.IAsyncResult 
          BeginInvoke(!T i,
                      [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method GenericAction`1::BeginInvoke

  .method public hidebysig newslot virtual 
          instance void  EndInvoke([mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method GenericAction`1::EndInvoke

} // end of class DelegatesIntro.GenericAction`1

.class public auto ansi beforefieldinit DelegatesIntro.DelegateIntro
       extends [mscorlib]System.Object
{
  .class auto ansi nested public beforefieldinit XPTO
         extends [mscorlib]System.Object
  {
    .field public class DelegatesIntro.DelegateIntro obj
    .method public hidebysig instance void 
            Anonymous1(int32 i) cil managed
    {
      // Code size       15 (0xf)
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class DelegatesIntro.DelegateIntro DelegatesIntro.DelegateIntro/XPTO::obj
      IL_0007:  ldarg.1
      IL_0008:  callvirt   instance void DelegatesIntro.DelegateIntro::MInstance(int32)
      IL_000d:  nop
      IL_000e:  ret
    } // end of method XPTO::Anonymous1

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method XPTO::.ctor

  } // end of class XPTO

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class DelegatesIntro.DelegateIntro/'<>c' '<>9'
    .field public static class DelegatesIntro.Action '<>9__4_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void DelegatesIntro.DelegateIntro/'<>c'::.ctor()
      IL_0005:  stsfld     class DelegatesIntro.DelegateIntro/'<>c' DelegatesIntro.DelegateIntro/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<Main1>b__4_0'(int32 i) cil managed
    {
      // Code size       18 (0x12)
      .maxstack  8
      IL_0000:  ldstr      "Lambda, i = {0}"
      IL_0005:  ldarg.1
      IL_0006:  box        [mscorlib]System.Int32
      IL_000b:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                    object)
      IL_0010:  nop
      IL_0011:  ret
    } // end of method '<>c'::'<Main1>b__4_0'

  } // end of class '<>c'

  .field private int32 count
  .method private hidebysig static void  MStatic(int32 x) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "DelegateIntro::MStatic, x = {0}"
    IL_0006:  ldarg.0
    IL_0007:  box        [mscorlib]System.Int32
    IL_000c:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0011:  nop
    IL_0012:  ret
  } // end of method DelegateIntro::MStatic

  .method private hidebysig instance void 
          MInstance(int32 x) cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.0
    IL_0003:  ldfld      int32 DelegatesIntro.DelegateIntro::count
    IL_0008:  ldc.i4.1
    IL_0009:  add
    IL_000a:  stfld      int32 DelegatesIntro.DelegateIntro::count
    IL_000f:  ldstr      "DelegateIntro::MInstance, x = {0}, count = {1}"
    IL_0014:  ldarg.1
    IL_0015:  box        [mscorlib]System.Int32
    IL_001a:  ldarg.0
    IL_001b:  ldfld      int32 DelegatesIntro.DelegateIntro::count
    IL_0020:  box        [mscorlib]System.Int32
    IL_0025:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_002a:  nop
    IL_002b:  ret
  } // end of method DelegateIntro::MInstance

  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       233 (0xe9)
    .maxstack  6
    .locals init (class DelegatesIntro.DelegateIntro V_0,
             class DelegatesIntro.Action V_1,
             class DelegatesIntro.Action V_2,
             class DelegatesIntro.Action V_3,
             class DelegatesIntro.Action V_4,
             class DelegatesIntro.GenericAction`1<int32> V_5,
             class DelegatesIntro.Action V_6,
             class DelegatesIntro.DelegateIntro/XPTO V_7,
             class DelegatesIntro.Action V_8)
    IL_0000:  nop
    IL_0001:  newobj     instance void DelegatesIntro.DelegateIntro::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldnull
    IL_0008:  ldftn      void DelegatesIntro.DelegateIntro::MStatic(int32)
    IL_000e:  newobj     instance void DelegatesIntro.Action::.ctor(object,
                                                                    native int)
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  ldftn      instance void DelegatesIntro.DelegateIntro::MInstance(int32)
    IL_001b:  newobj     instance void DelegatesIntro.Action::.ctor(object,
                                                                    native int)
    IL_0020:  stloc.2
    IL_0021:  ldnull
    IL_0022:  ldftn      void DelegatesIntro.DelegateIntro::MStatic(int32)
    IL_0028:  newobj     instance void DelegatesIntro.Action::.ctor(object,
                                                                    native int)
    IL_002d:  stloc.3
    IL_002e:  ldloc.0
    IL_002f:  ldftn      instance void DelegatesIntro.DelegateIntro::MInstance(int32)
    IL_0035:  newobj     instance void DelegatesIntro.Action::.ctor(object,
                                                                    native int)
    IL_003a:  stloc.s    V_4
    IL_003c:  ldloc.1
    IL_003d:  ldc.i4.s   10
    IL_003f:  callvirt   instance void DelegatesIntro.Action::Invoke(int32)
    IL_0044:  nop
    IL_0045:  ldloc.2
    IL_0046:  ldc.i4.s   20
    IL_0048:  callvirt   instance void DelegatesIntro.Action::Invoke(int32)
    IL_004d:  nop
    IL_004e:  ldloc.1
    IL_004f:  ldc.i4.s   10
    IL_0051:  callvirt   instance void DelegatesIntro.Action::Invoke(int32)
    IL_0056:  nop
    IL_0057:  ldloc.1
    IL_0058:  callvirt   instance [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Delegate::get_Method()
    IL_005d:  ldnull
    IL_005e:  ldc.i4.1
    IL_005f:  newarr     [mscorlib]System.Object
    IL_0064:  dup
    IL_0065:  ldc.i4.0
    IL_0066:  ldc.i4.s   10
    IL_0068:  box        [mscorlib]System.Int32
    IL_006d:  stelem.ref
    IL_006e:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_0073:  pop
    IL_0074:  ldloc.2
    IL_0075:  ldc.i4.s   20
    IL_0077:  callvirt   instance void DelegatesIntro.Action::Invoke(int32)
    IL_007c:  nop
    IL_007d:  ldloc.0
    IL_007e:  ldftn      instance void DelegatesIntro.DelegateIntro::MInstance(int32)
    IL_0084:  newobj     instance void class DelegatesIntro.GenericAction`1<int32>::.ctor(object,
                                                                                          native int)
    IL_0089:  stloc.s    V_5
    IL_008b:  ldloc.s    V_5
    IL_008d:  ldc.i4.s   99
    IL_008f:  callvirt   instance void class DelegatesIntro.GenericAction`1<int32>::Invoke(!0)
    IL_0094:  nop
    IL_0095:  ldloc.s    V_5
    IL_0097:  ldc.i4.s   99
    IL_0099:  callvirt   instance void class DelegatesIntro.GenericAction`1<int32>::Invoke(!0)
    IL_009e:  nop
    IL_009f:  ldsfld     class DelegatesIntro.Action DelegatesIntro.DelegateIntro/'<>c'::'<>9__4_0'
    IL_00a4:  dup
    IL_00a5:  brtrue.s   IL_00be

    IL_00a7:  pop
    IL_00a8:  ldsfld     class DelegatesIntro.DelegateIntro/'<>c' DelegatesIntro.DelegateIntro/'<>c'::'<>9'
    IL_00ad:  ldftn      instance void DelegatesIntro.DelegateIntro/'<>c'::'<Main1>b__4_0'(int32)
    IL_00b3:  newobj     instance void DelegatesIntro.Action::.ctor(object,
                                                                    native int)
    IL_00b8:  dup
    IL_00b9:  stsfld     class DelegatesIntro.Action DelegatesIntro.DelegateIntro/'<>c'::'<>9__4_0'
    IL_00be:  stloc.s    V_6
    IL_00c0:  newobj     instance void DelegatesIntro.DelegateIntro/XPTO::.ctor()
    IL_00c5:  stloc.s    V_7
    IL_00c7:  ldloc.s    V_7
    IL_00c9:  ldloc.0
    IL_00ca:  stfld      class DelegatesIntro.DelegateIntro DelegatesIntro.DelegateIntro/XPTO::obj
    IL_00cf:  ldloc.s    V_7
    IL_00d1:  ldftn      instance void DelegatesIntro.DelegateIntro/XPTO::Anonymous1(int32)
    IL_00d7:  newobj     instance void DelegatesIntro.Action::.ctor(object,
                                                                    native int)
    IL_00dc:  stloc.s    V_8
    IL_00de:  ldloc.s    V_8
    IL_00e0:  ldc.i4.s   40
    IL_00e2:  callvirt   instance void DelegatesIntro.Action::Invoke(int32)
    IL_00e7:  nop
    IL_00e8:  ret
  } // end of method DelegateIntro::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      int32 DelegatesIntro.DelegateIntro::count
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [mscorlib]System.Object::.ctor()
    IL_000d:  nop
    IL_000e:  ret
  } // end of method DelegateIntro::.ctor

} // end of class DelegatesIntro.DelegateIntro

.class public auto ansi sealed DelegatesIntro.Predicate`1<T>
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method Predicate`1::.ctor

  .method public hidebysig newslot virtual 
          instance bool  Invoke(!T elem) runtime managed
  {
  } // end of method Predicate`1::Invoke

  .method public hidebysig newslot virtual 
          instance [mscorlib]System.IAsyncResult 
          BeginInvoke(!T elem,
                      [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method Predicate`1::BeginInvoke

  .method public hidebysig newslot virtual 
          instance bool  EndInvoke([mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method Predicate`1::EndInvoke

} // end of class DelegatesIntro.Predicate`1

.class public auto ansi beforefieldinit DelegatesIntro.Filter`1<T>
       extends [mscorlib]System.Object
{
  .method public hidebysig static int32  Count(!T[] arr,
                                               class DelegatesIntro.Predicate`1<!T> pred) cil managed
  {
    // Code size       57 (0x39)
    .maxstack  2
    .locals init (int32 V_0,
             !T[] V_1,
             int32 V_2,
             !T V_3,
             bool V_4,
             int32 V_5)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  nop
    IL_0004:  ldarg.0
    IL_0005:  stloc.1
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.2
    IL_0008:  br.s       IL_002b

    IL_000a:  ldloc.1
    IL_000b:  ldloc.2
    IL_000c:  ldelem     !T
    IL_0011:  stloc.3
    IL_0012:  nop
    IL_0013:  ldarg.1
    IL_0014:  ldloc.3
    IL_0015:  callvirt   instance bool class DelegatesIntro.Predicate`1<!T>::Invoke(!0)
    IL_001a:  stloc.s    V_4
    IL_001c:  ldloc.s    V_4
    IL_001e:  brfalse.s  IL_0026

    IL_0020:  nop
    IL_0021:  ldloc.0
    IL_0022:  ldc.i4.1
    IL_0023:  add
    IL_0024:  stloc.0
    IL_0025:  nop
    IL_0026:  nop
    IL_0027:  ldloc.2
    IL_0028:  ldc.i4.1
    IL_0029:  add
    IL_002a:  stloc.2
    IL_002b:  ldloc.2
    IL_002c:  ldloc.1
    IL_002d:  ldlen
    IL_002e:  conv.i4
    IL_002f:  blt.s      IL_000a

    IL_0031:  ldloc.0
    IL_0032:  stloc.s    V_5
    IL_0034:  br.s       IL_0036

    IL_0036:  ldloc.s    V_5
    IL_0038:  ret
  } // end of method Filter`1::Count

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Filter`1::.ctor

} // end of class DelegatesIntro.Filter`1

.class public auto ansi beforefieldinit DelegatesIntro.App
       extends [mscorlib]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class DelegatesIntro.App/'<>c' '<>9'
    .field public static class DelegatesIntro.Predicate`1<int32> '<>9__1_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void DelegatesIntro.App/'<>c'::.ctor()
      IL_0005:  stsfld     class DelegatesIntro.App/'<>c' DelegatesIntro.App/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<Main1>b__1_0'(int32 elem) cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldc.i4.2
      IL_0002:  rem
      IL_0003:  ldc.i4.0
      IL_0004:  ceq
      IL_0006:  ret
    } // end of method '<>c'::'<Main1>b__1_0'

  } // end of class '<>c'

  .method public hidebysig static bool  isEven(int32 elem) cil managed
  {
    // Code size       12 (0xc)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.2
    IL_0003:  rem
    IL_0004:  ldc.i4.0
    IL_0005:  ceq
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method App::isEven

  .method public hidebysig static void  Main1() cil managed
  {
    // Code size       114 (0x72)
    .maxstack  3
    .locals init (int32[] V_0,
             int32 V_1,
             class DelegatesIntro.Predicate`1<int32> V_2,
             int32 V_3)
    IL_0000:  nop
    IL_0001:  ldc.i4.s   10
    IL_0003:  newarr     [mscorlib]System.Int32
    IL_0008:  dup
    IL_0009:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=40' '<PrivateImplementationDetails>'::E0D2592373A0C161E56E266306CD8405CD719D19
    IL_000e:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray([mscorlib]System.Array,
                                                                                                        [mscorlib]System.RuntimeFieldHandle)
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  ldsfld     class DelegatesIntro.Predicate`1<int32> DelegatesIntro.App/'<>c'::'<>9__1_0'
    IL_001a:  dup
    IL_001b:  brtrue.s   IL_0034

    IL_001d:  pop
    IL_001e:  ldsfld     class DelegatesIntro.App/'<>c' DelegatesIntro.App/'<>c'::'<>9'
    IL_0023:  ldftn      instance bool DelegatesIntro.App/'<>c'::'<Main1>b__1_0'(int32)
    IL_0029:  newobj     instance void class DelegatesIntro.Predicate`1<int32>::.ctor(object,
                                                                                      native int)
    IL_002e:  dup
    IL_002f:  stsfld     class DelegatesIntro.Predicate`1<int32> DelegatesIntro.App/'<>c'::'<>9__1_0'
    IL_0034:  call       int32 class DelegatesIntro.Filter`1<int32>::Count(!0[],
                                                                           class DelegatesIntro.Predicate`1<!0>)
    IL_0039:  stloc.1
    IL_003a:  ldstr      "Count even elems with lambda, c = {0}"
    IL_003f:  ldloc.1
    IL_0040:  box        [mscorlib]System.Int32
    IL_0045:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_004a:  nop
    IL_004b:  ldnull
    IL_004c:  ldftn      bool DelegatesIntro.App::isEven(int32)
    IL_0052:  newobj     instance void class DelegatesIntro.Predicate`1<int32>::.ctor(object,
                                                                                      native int)
    IL_0057:  stloc.2
    IL_0058:  ldloc.0
    IL_0059:  ldloc.2
    IL_005a:  call       int32 class DelegatesIntro.Filter`1<int32>::Count(!0[],
                                                                           class DelegatesIntro.Predicate`1<!0>)
    IL_005f:  stloc.3
    IL_0060:  ldstr      "Count even elems with delegate, c1 = {0}"
    IL_0065:  ldloc.3
    IL_0066:  box        [mscorlib]System.Int32
    IL_006b:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0070:  nop
    IL_0071:  ret
  } // end of method App::Main1

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method App::.ctor

} // end of class DelegatesIntro.App

.class public auto ansi sealed DelegatesIntro.MyDelegate
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method MyDelegate::.ctor

  .method public hidebysig newslot virtual 
          instance char  Invoke(char c) runtime managed
  {
  } // end of method MyDelegate::Invoke

  .method public hidebysig newslot virtual 
          instance [mscorlib]System.IAsyncResult 
          BeginInvoke(char c,
                      [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method MyDelegate::BeginInvoke

  .method public hidebysig newslot virtual 
          instance char  EndInvoke([mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method MyDelegate::EndInvoke

} // end of class DelegatesIntro.MyDelegate

.class public auto ansi beforefieldinit DelegatesIntro.DelegateGeneratedIL
       extends [mscorlib]System.Object
{
  .method public hidebysig static char  ToUpperCase(char ch) cil managed
  {
    // Code size       39 (0x27)
    .maxstack  2
    .locals init (bool V_0,
             char V_1)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   97
    IL_0004:  blt.s      IL_0010

    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.s   122
    IL_0009:  cgt
    IL_000b:  ldc.i4.0
    IL_000c:  ceq
    IL_000e:  br.s       IL_0011

    IL_0010:  ldc.i4.0
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  brfalse.s  IL_0021

    IL_0015:  nop
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.s   97
    IL_0019:  sub
    IL_001a:  ldc.i4.s   65
    IL_001c:  add
    IL_001d:  conv.u2
    IL_001e:  stloc.1
    IL_001f:  br.s       IL_0025

    IL_0021:  ldarg.0
    IL_0022:  stloc.1
    IL_0023:  br.s       IL_0025

    IL_0025:  ldloc.1
    IL_0026:  ret
  } // end of method DelegateGeneratedIL::ToUpperCase

  .method public hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       121 (0x79)
    .maxstack  9
    .locals init (string V_0,
             class Webao.Test.Dto.DtoResults V_1,
             class Webao.Test.Dto.DtoSearch V_2,
             [mscorlib]System.Func`1<object> V_3,
             [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> V_4)
    IL_0000:  nop
    IL_0001:  ldstr      "Webao.Test.Dto.DtoSearch.GetArtistsList"
    IL_0006:  stloc.0
    IL_0007:  newobj     instance void Webao.Test.Dto.DtoResults::.ctor()
    IL_000c:  dup
    IL_000d:  newobj     instance void Webao.Test.Dto.DtoArtistMatches::.ctor()
    IL_0012:  dup
    IL_0013:  newobj     instance void [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist>::.ctor()
    IL_0018:  dup
    IL_0019:  newobj     instance void Webao.Test.Dto.Artist::.ctor()
    IL_001e:  dup
    IL_001f:  ldstr      "xpto artist"
    IL_0024:  callvirt   instance void Webao.Test.Dto.Artist::set_Name(string)
    IL_0029:  nop
    IL_002a:  callvirt   instance void [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist>::Add(!0)
    IL_002f:  nop
    IL_0030:  callvirt   instance void Webao.Test.Dto.DtoArtistMatches::set_Artist([mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist>)
    IL_0035:  nop
    IL_0036:  callvirt   instance void Webao.Test.Dto.DtoResults::set_ArtistMatches(class Webao.Test.Dto.DtoArtistMatches)
    IL_003b:  nop
    IL_003c:  stloc.1
    IL_003d:  newobj     instance void Webao.Test.Dto.DtoSearch::.ctor()
    IL_0042:  stloc.2
    IL_0043:  ldloc.2
    IL_0044:  ldloc.1
    IL_0045:  callvirt   instance void Webao.Test.Dto.DtoSearch::set_Results(class Webao.Test.Dto.DtoResults)
    IL_004a:  nop
    IL_004b:  ldloc.2
    IL_004c:  ldftn      instance [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist> Webao.Test.Dto.DtoSearch::GetArtistsList()
    IL_0052:  newobj     instance void [mscorlib]System.Func`1<object>::.ctor(object,
                                                                              native int)
    IL_0057:  stloc.3
    IL_0058:  ldloc.3
    IL_0059:  callvirt   instance !0 [mscorlib]System.Func`1<object>::Invoke()
    IL_005e:  castclass  [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist>
    IL_0063:  stloc.s    V_4
    IL_0065:  ldloc.s    V_4
    IL_0067:  ldc.i4.0
    IL_0068:  callvirt   instance !0 [mscorlib]System.Collections.Generic.List`1<class Webao.Test.Dto.Artist>::get_Item(int32)
    IL_006d:  callvirt   instance string Webao.Test.Dto.Artist::get_Name()
    IL_0072:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0077:  nop
    IL_0078:  ret
  } // end of method DelegateGeneratedIL::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method DelegateGeneratedIL::.ctor

} // end of class DelegatesIntro.DelegateGeneratedIL

.class private auto ansi sealed '<PrivateImplementationDetails>'
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=40'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 40
  } // end of class '__StaticArrayInitTypeSize=40'

  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=40' E0D2592373A0C161E56E266306CD8405CD719D19 at I_00003920
} // end of class '<PrivateImplementationDetails>'


// =============================================================

.data cil I_00003920 = bytearray (
                 01 00 00 00 02 00 00 00 03 00 00 00 04 00 00 00
                 05 00 00 00 06 00 00 00 07 00 00 00 08 00 00 00
                 09 00 00 00 0A 00 00 00) 
// *********** DISASSEMBLY COMPLETE ***********************
