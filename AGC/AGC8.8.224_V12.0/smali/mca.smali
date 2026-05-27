.class public final Lmca;
.super Loln;

# interfaces
.implements Lomk;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneAttachmentUploader$updateProgress$updatedResource$1"
    c = "OneAttachmentUploader.kt"
    d = "invokeSuspend"
    e = {
        0x5f
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

    iput-object p1, p0, Lmca;->e:Ldqx;

    iput-object p2, p0, Lmca;->b:Llyf;

    iput-object p3, p0, Lmca;->c:Llwq;

    iput-object p4, p0, Lmca;->d:Lmbj;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Loku;

    new-instance p1, Lmca;

    iget-object v1, p0, Lmca;->e:Ldqx;

    iget-object v2, p0, Lmca;->b:Llyf;

    iget-object v3, p0, Lmca;->c:Llwq;

    iget-object v4, p0, Lmca;->d:Lmbj;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lmca;-><init>(Ldqx;Llyf;Llwq;Lmbj;Loku;[B[B)V

    sget-object v0, Lojk;->a:Lojk;

    invoke-virtual {p1, v0}, Lmca;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmca;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmca;->e:Ldqx;

    iget-object p1, p1, Ldqx;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmca;->b:Llyf;

    iget-object v2, p0, Lmca;->c:Llwq;

    new-instance v3, Lawq;

    iget-object v4, p0, Lmca;->d:Lmbj;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lawq;-><init>(Lmbj;I)V

    const/4 v4, 0x1

    iput v4, p0, Lmca;->a:I

    check-cast p1, Llyz;

    invoke-static {p1, v1, v2, v3, p0}, Llyz;->o(Llyz;Llyf;Llwq;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
