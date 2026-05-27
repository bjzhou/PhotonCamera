.class public final Lmcq;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader"
    c = "ResourceManifestUploader.kt"
    d = "transmitUploadError"
    e = {
        0x75,
        0x7b,
        0x82,
        0x85
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public d:Lmdd;

.field public e:Lmdc;

.field public f:Lodt;

.field public g:Lods;

.field final synthetic h:Llwc;


# direct methods
.method public constructor <init>(Llwc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Lmcq;->h:Llwc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmcq;->b:Ljava/lang/Object;

    iget p1, p0, Lmcq;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmcq;->c:I

    iget-object p1, p0, Lmcq;->h:Llwc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Llwc;->e(Lmdd;Lmdc;Lmdf;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
