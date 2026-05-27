.class final Lmah;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.enqueue.UploadEnqueuer"
    c = "UploadEnqueuer.kt"
    d = "enqueueForUpload$suspendImpl"
    e = {
        0x8f,
        0xa0,
        0xa4,
        0x2d,
        0xc2,
        0x30
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field synthetic g:Ljava/lang/Object;

.field final synthetic h:Lmai;

.field i:I

.field j:Lmah;

.field k:Lodt;


# direct methods
.method public constructor <init>(Lmai;Loku;)V
    .locals 0

    iput-object p1, p0, Lmah;->h:Lmai;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmah;->g:Ljava/lang/Object;

    iget p1, p0, Lmah;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmah;->i:I

    iget-object p1, p0, Lmah;->h:Lmai;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Lmai;->a(Lmai;Llzy;Ljava/util/List;Laxf;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
