.class public final Lmbx;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneAttachmentUploader"
    c = "OneAttachmentUploader.kt"
    d = "updateHandle"
    e = {
        0x4b
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Lmbi;

.field public d:Llwq;

.field final synthetic e:Ldqx;


# direct methods
.method public constructor <init>(Ldqx;Loku;[B[B)V
    .locals 0

    iput-object p1, p0, Lmbx;->e:Ldqx;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmbx;->a:Ljava/lang/Object;

    iget p1, p0, Lmbx;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmbx;->b:I

    iget-object p1, p0, Lmbx;->e:Ldqx;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Ldqx;->p(Lmbi;Ljava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
