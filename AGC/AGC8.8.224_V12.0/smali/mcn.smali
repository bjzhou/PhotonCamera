.class public final Lmcn;
.super Loln;

# interfaces
.implements Lomk;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader$completeResource$completedResource$1"
    c = "ResourceManifestUploader.kt"
    d = "invokeSuspend"
    e = {
        0x5a
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lmdd;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Llwc;


# direct methods
.method public constructor <init>(Llwc;Lmdd;Ljava/lang/String;Loku;[B)V
    .locals 0

    iput-object p1, p0, Lmcn;->d:Llwc;

    iput-object p2, p0, Lmcn;->b:Lmdd;

    iput-object p3, p0, Lmcn;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Loku;

    new-instance p1, Lmcn;

    iget-object v1, p0, Lmcn;->d:Llwc;

    iget-object v2, p0, Lmcn;->b:Lmdd;

    iget-object v3, p0, Lmcn;->c:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lmcn;-><init>(Llwc;Lmdd;Ljava/lang/String;Loku;[B)V

    sget-object v0, Lojk;->a:Lojk;

    invoke-virtual {p1, v0}, Lmcn;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lmcn;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmcn;->d:Llwc;

    iget-object p1, p1, Llwc;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmcn;->b:Lmdd;

    iget-object v1, v1, Lmdd;->a:Llyf;

    iget-object v2, p0, Lmcn;->c:Ljava/lang/String;

    invoke-static {v2}, Lllj;->c(Ljava/lang/String;)Lluq;

    move-result-object v2

    iget-object v3, p0, Lmcn;->d:Llwc;

    iget-object v3, v3, Llwc;->b:Ljava/lang/Object;

    invoke-static {v3}, Lllj;->e(Lkrn;)Lnyy;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, p0, Lmcn;->a:I

    check-cast p1, Llyz;

    invoke-virtual {p1, v1, v2, v3, p0}, Llyz;->p(Llyf;Lluq;Lnyy;Loku;)Ljava/lang/Object;

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
