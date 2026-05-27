.class final Lmar;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.F250WorkEnqueuerImpl"
    c = "F250WorkEnqueuerImpl.kt"
    d = "dequeueUploadWork"
    e = {
        0x76,
        0x8d,
        0x78
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lmav;

.field d:I

.field e:Llzy;

.field f:Llzz;

.field g:Lodt;

.field h:Lojx;

.field i:Lojx;


# direct methods
.method public constructor <init>(Lmav;Loku;)V
    .locals 0

    iput-object p1, p0, Lmar;->c:Lmav;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmar;->b:Ljava/lang/Object;

    iget p1, p0, Lmar;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmar;->d:I

    iget-object p1, p0, Lmar;->c:Lmav;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lmav;->c(Llzy;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
