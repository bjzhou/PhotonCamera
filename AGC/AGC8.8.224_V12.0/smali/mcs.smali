.class public final Lmcs;
.super Loln;

# interfaces
.implements Lomk;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader$transmitUploadError$3"
    c = "ResourceManifestUploader.kt"
    d = "invokeSuspend"
    e = {
        0x82
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lmdd;

.field final synthetic c:Llwc;


# direct methods
.method public constructor <init>(Llwc;Lmdd;Loku;[B)V
    .locals 0

    iput-object p1, p0, Lmcs;->c:Llwc;

    iput-object p2, p0, Lmcs;->b:Lmdd;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Loku;

    new-instance v0, Lmcs;

    iget-object v1, p0, Lmcs;->c:Llwc;

    iget-object v2, p0, Lmcs;->b:Lmdd;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lmcs;-><init>(Llwc;Lmdd;Loku;[B)V

    sget-object p1, Lojk;->a:Lojk;

    invoke-virtual {v0, p1}, Lmcs;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmcs;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmcs;->c:Llwc;

    iget-object p1, p1, Llwc;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmcs;->b:Lmdd;

    iget-object v1, v1, Lmdd;->a:Llyf;

    const/4 v2, 0x1

    iput v2, p0, Lmcs;->a:I

    iget-wide v1, v1, Llyf;->u:J

    sget-object v3, Llvk;->e:Llvk;

    check-cast p1, Llyz;

    invoke-virtual {p1, v1, v2, v3, p0}, Llyz;->n(JLlvk;Loku;)Ljava/lang/Object;

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
