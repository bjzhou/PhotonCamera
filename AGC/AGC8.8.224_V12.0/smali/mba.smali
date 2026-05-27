.class public final Lmba;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.F250Worker"
    c = "F250Worker.kt"
    d = "pauseOrFailInProgressUploads"
    e = {
        0x6f,
        0xc2,
        0x71,
        0x78,
        0xd1,
        0x7a,
        0x89,
        0xe0,
        0x8b
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field final synthetic f:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

.field public g:I

.field public h:Llzy;

.field public i:Ljava/util/List;

.field public j:Lodt;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;Loku;)V
    .locals 0

    iput-object p1, p0, Lmba;->f:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmba;->e:Ljava/lang/Object;

    iget p1, p0, Lmba;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmba;->g:I

    iget-object p1, p0, Lmba;->f:Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/libraries/vision/visionkit/f250/internal/uploader/work/F250Worker;->j(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
