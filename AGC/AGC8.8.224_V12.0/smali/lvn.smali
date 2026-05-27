.class final Llvn;
.super Loln;

# interfaces
.implements Lomp;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.helper.F250Compat$observeResources$job$1$1"
    c = "F250Compat.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field final synthetic a:Llvm;


# direct methods
.method public constructor <init>(Llvm;Loku;)V
    .locals 0

    iput-object p1, p0, Llvn;->a:Llvm;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Llvn;

    iget-object p2, p0, Llvn;->a:Llvm;

    invoke-direct {p1, p2, p3}, Llvn;-><init>(Llvm;Loku;)V

    sget-object p2, Lojk;->a:Lojk;

    invoke-virtual {p1, p2}, Llvn;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method
