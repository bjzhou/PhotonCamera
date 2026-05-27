.class public final Llvp;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.helper.F250Compat$observeResources$job$1"
    c = "F250Compat.kt"
    d = "invokeSuspend"
    e = {
        0x70
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Llvm;

.field final synthetic e:Llvm;

.field final synthetic f:Lmaf;


# direct methods
.method public constructor <init>(Lmaf;Ljava/util/Set;Ljava/util/List;Llvm;Llvm;Loku;[B)V
    .locals 0

    iput-object p1, p0, Llvp;->f:Lmaf;

    iput-object p2, p0, Llvp;->b:Ljava/util/Set;

    iput-object p3, p0, Llvp;->c:Ljava/util/List;

    iput-object p4, p0, Llvp;->d:Llvm;

    iput-object p5, p0, Llvp;->e:Llvm;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lopu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Llvp;

    invoke-virtual {p1, p2}, Llvp;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Llvp;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Llvp;->f:Lmaf;

    iget-object p1, p1, Lmaf;->b:Ljava/lang/Object;

    iget-object v1, p0, Llvp;->b:Ljava/util/Set;

    iget-object v2, p0, Llvp;->c:Ljava/util/List;

    invoke-interface {p1, v1, v2}, Lluj;->a(Ljava/util/Set;Ljava/util/List;)Lott;

    move-result-object p1

    new-instance v1, Llvn;

    iget-object v2, p0, Llvp;->d:Llvm;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Llvn;-><init>(Llvm;Loku;)V

    new-instance v2, Louf;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v1, v3}, Louf;-><init>(Lott;Lomp;I)V

    new-instance p1, Llvo;

    invoke-direct {p1}, Llvo;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Llvp;->a:I

    invoke-interface {v2, p1, p0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 8

    new-instance p1, Llvp;

    iget-object v1, p0, Llvp;->f:Lmaf;

    iget-object v2, p0, Llvp;->b:Ljava/util/Set;

    iget-object v3, p0, Llvp;->c:Ljava/util/List;

    iget-object v4, p0, Llvp;->d:Llvm;

    iget-object v5, p0, Llvp;->e:Llvm;

    const/4 v7, 0x0

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Llvp;-><init>(Lmaf;Ljava/util/Set;Ljava/util/List;Llvm;Llvm;Loku;[B)V

    return-object p1
.end method
