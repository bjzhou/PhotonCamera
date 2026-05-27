.class public final Lmco;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader"
    c = "ResourceManifestUploader.kt"
    d = "failOnErroneousAttachmentComplete"
    e = {
        0x69,
        0x6a
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public d:Lmdd;

.field public e:Ljava/lang/IllegalStateException;

.field final synthetic f:Llwc;


# direct methods
.method public constructor <init>(Llwc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Lmco;->f:Llwc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmco;->b:Ljava/lang/Object;

    iget p1, p0, Lmco;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmco;->c:I

    iget-object p1, p0, Lmco;->f:Llwc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Llwc;->d(Lmdd;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
