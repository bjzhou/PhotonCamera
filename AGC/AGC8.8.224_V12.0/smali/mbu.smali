.class public final Lmbu;
.super Loln;

# interfaces
.implements Lomk;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneAttachmentUploader$transmitUploadError$2"
    c = "OneAttachmentUploader.kt"
    d = "invokeSuspend"
    e = {
        0xa9
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Llyf;

.field final synthetic c:Llwq;

.field final synthetic d:Lmbj;

.field final synthetic e:Ldqx;


# direct methods
.method public constructor <init>(Ldqx;Llyf;Llwq;Lmbj;Loku;[B[B)V
    .locals 0

    iput-object p1, p0, Lmbu;->e:Ldqx;

    iput-object p2, p0, Lmbu;->b:Llyf;

    iput-object p3, p0, Lmbu;->c:Llwq;

    iput-object p4, p0, Lmbu;->d:Lmbj;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Loku;

    new-instance p1, Lmbu;

    iget-object v1, p0, Lmbu;->e:Ldqx;

    iget-object v2, p0, Lmbu;->b:Llyf;

    iget-object v3, p0, Lmbu;->c:Llwq;

    iget-object v4, p0, Lmbu;->d:Lmbj;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lmbu;-><init>(Ldqx;Llyf;Llwq;Lmbj;Loku;[B[B)V

    sget-object v0, Lojk;->a:Lojk;

    invoke-virtual {p1, v0}, Lmbu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmbu;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmbu;->e:Ldqx;

    iget-object p1, p1, Ldqx;->a:Ljava/lang/Object;

    iget-object v2, p0, Lmbu;->b:Llyf;

    iget-object v3, p0, Lmbu;->c:Llwq;

    new-instance v5, Lawq;

    iget-object v1, p0, Lmbu;->d:Lmbj;

    const/4 v4, 0x3

    invoke-direct {v5, v1, v4}, Lawq;-><init>(Lmbj;I)V

    const/4 v1, 0x1

    iput v1, p0, Lmbu;->a:I

    move-object v1, p1

    check-cast v1, Llyz;

    const/4 v4, 0x1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Llyz;->j(Llyf;Llwq;ZLomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
