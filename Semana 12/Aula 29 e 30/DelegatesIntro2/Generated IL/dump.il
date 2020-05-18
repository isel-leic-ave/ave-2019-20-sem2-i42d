
//
// Excerpt
//

.class public auto ansi beforefieldinit DelegatesIntro.DelegateGeneratedIL
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private MyDelegate
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

  } // end of class MyDelegate

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
    // Code size       29 (0x1d)
    .maxstack  2
    .locals init (class DelegatesIntro.DelegateGeneratedIL/MyDelegate V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  ldftn      char DelegatesIntro.DelegateGeneratedIL::ToUpperCase(char)
    IL_0008:  newobj     instance void DelegatesIntro.DelegateGeneratedIL/MyDelegate::.ctor(object,
                                                                                            native int)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.s   97
    IL_0011:  callvirt   instance char DelegatesIntro.DelegateGeneratedIL/MyDelegate::Invoke(char)
    IL_0016:  call       void [mscorlib]System.Console::WriteLine(char)
    IL_001b:  nop
    IL_001c:  ret
  } // end of method DelegateGeneratedIL::Main

} // end of class DelegatesIntro.DelegateGeneratedIL

