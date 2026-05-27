.class public final Lmcx;
.super Loln;

# interfaces
.implements Lomk;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader$updateProgress$updatedResource$1"
    c = "ResourceManifestUploader.kt"
    d = "invokeSuspend"
    e = {
        0x51
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lmdd;

.field final synthetic c:D

.field final synthetic d:Llwc;


# direct methods
.method public constructor <init>(Llwc;Lmdd;DLoku;[B)V
    .locals 0

    iput-object p1, p0, Lmcx;->d:Llwc;

    iput-object p2, p0, Lmcx;->b:Lmdd;

    iput-wide p3, p0, Lmcx;->c:D

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Loku;

    new-instance p1, Lmcx;

    iget-object v1, p0, Lmcx;->d:Llwc;

    iget-object v2, p0, Lmcx;->b:Lmdd;

    iget-wide v3, p0, Lmcx;->c:D

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lmcx;-><init>(Llwc;Lmdd;DLoku;[B)V

    sget-object v0, Lojk;->a:Lojk;

    invoke-virtual {p1, v0}, Lmcx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmcx;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmcx;->d:Llwc;

    iget-object p1, p1, Llwc;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmcx;->b:Lmdd;

    iget-object v1, v1, Lmdd;->a:Llyf;

    iget-wide v2, p0, Lmcx;->c:D

    const/4 v4, 0x1

    iput v4, p0, Lmcx;->a:I

    check-cast p1, Llyz;

    invoke-virtual {p1, v1, v2, v3, p0}, Llyz;->h(Llyf;DLoku;)Ljava/lang/Object;

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
