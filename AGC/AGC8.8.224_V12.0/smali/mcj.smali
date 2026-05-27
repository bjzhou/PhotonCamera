.class final Lmcj;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneResourceUploaderImpl$uploadAllAttachments$2"
    c = "OneResourceUploaderImpl.kt"
    d = "invokeSuspend"
    e = {
        0x89
    }
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lmcl;

.field final synthetic d:Llzy;

.field final synthetic e:Llyf;


# direct methods
.method public constructor <init>(Lmcl;Llzy;Llyf;Loku;)V
    .locals 0

    iput-object p1, p0, Lmcj;->c:Lmcl;

    iput-object p2, p0, Lmcj;->d:Llzy;

    iput-object p3, p0, Lmcj;->e:Llyf;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llwq;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lmcj;

    invoke-virtual {p1, p2}, Lmcj;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmcj;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmcj;->b:Ljava/lang/Object;

    check-cast p1, Llwq;

    iget-object v1, p1, Llwq;->b:Lluo;

    sget-object v2, Lluo;->b:Lluo;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Llwq;->j:Llwz;

    iget-object v1, v1, Llwz;->e:Llvk;

    sget-object v2, Llvk;->g:Llvk;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lmcj;->c:Lmcl;

    iget-object v1, v1, Lmcl;->a:Ldqx;

    iget-object v2, p0, Lmcj;->d:Llzy;

    iget-object v3, p0, Lmcj;->e:Llyf;

    const/4 v4, 0x1

    iput v4, p0, Lmcj;->a:I

    invoke-virtual {v1, v2, v3, p1, p0}, Ldqx;->r(Llzy;Llyf;Llwq;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    check-cast p1, Llwq;

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 4

    new-instance v0, Lmcj;

    iget-object v1, p0, Lmcj;->c:Lmcl;

    iget-object v2, p0, Lmcj;->d:Llzy;

    iget-object v3, p0, Lmcj;->e:Llyf;

    invoke-direct {v0, v1, v2, v3, p2}, Lmcj;-><init>(Lmcl;Llzy;Llyf;Loku;)V

    iput-object p1, v0, Lmcj;->b:Ljava/lang/Object;

    return-object v0
.end method
