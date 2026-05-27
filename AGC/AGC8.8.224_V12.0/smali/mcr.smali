.class public final Lmcr;
.super Loln;

# interfaces
.implements Lomk;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader$transmitUploadError$2"
    c = "ResourceManifestUploader.kt"
    d = "invokeSuspend"
    e = {
        0x7c
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lmdd;

.field final synthetic c:Lmdc;

.field final synthetic d:Llwc;


# direct methods
.method public constructor <init>(Llwc;Lmdd;Lmdc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Lmcr;->d:Llwc;

    iput-object p2, p0, Lmcr;->b:Lmdd;

    iput-object p3, p0, Lmcr;->c:Lmdc;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Loku;

    new-instance p1, Lmcr;

    iget-object v1, p0, Lmcr;->d:Llwc;

    iget-object v2, p0, Lmcr;->b:Lmdd;

    iget-object v3, p0, Lmcr;->c:Lmdc;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lmcr;-><init>(Llwc;Lmdd;Lmdc;Loku;[B)V

    sget-object v0, Lojk;->a:Lojk;

    invoke-virtual {p1, v0}, Lmcr;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmcr;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmcr;->d:Llwc;

    iget-object p1, p1, Llwc;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmcr;->b:Lmdd;

    iget-object v1, v1, Lmdd;->a:Llyf;

    iget-object v2, p0, Lmcr;->c:Lmdc;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lmdc;->a(J)D

    move-result-wide v8

    const/4 v2, 0x1

    iput v2, p0, Lmcr;->a:I

    iget-wide v6, v1, Llyf;->u:J

    sget-object v10, Llvk;->e:Llvk;

    move-object v5, p1

    check-cast v5, Llyz;

    move-object v11, p0

    invoke-virtual/range {v5 .. v11}, Llyz;->e(JDLlvk;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lolc;->a:Lolc;

    if-eq p1, v1, :cond_0

    sget-object p1, Lojk;->a:Lojk;

    :cond_0
    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
