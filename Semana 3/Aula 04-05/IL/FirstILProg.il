


.assembly extern mscorlib {}

.assembly FirstILProg
{
    .ver 1:0:1:0
}
.module FirstILProg.exe

.method static void main() cil managed
{
    .maxstack 10
    .entrypoint
    ldc.i4 10
	ldc.i4 20
    add
    ldc.i4.5
    sub
    //pop // Remove sub result, or consume it with WriteLine 
    call /*instance*/ void [mscorlib]System.Console::WriteLine(int32)
    ret
}


