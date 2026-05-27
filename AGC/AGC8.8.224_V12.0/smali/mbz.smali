.class public final Lmbz;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneAttachmentUploader"
    c = "OneAttachmentUploader.kt"
    d = "updateProgress"
    e = {
        0x5e
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

    iput-object p1, p0, Lmbz;->e:Ldqx;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lmbz;->a:Ljava/lang/Object;

    iget p1, p0, Lmbz;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmbz;->b:I

    iget-object p1, p0, Lmbz;->e:Ldqx;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Ldqx;->q(Lmbi;JLoku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
