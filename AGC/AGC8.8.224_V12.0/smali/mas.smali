.class final Lmas;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.F250WorkEnqueuerImpl"
    c = "F250WorkEnqueuerImpl.kt"
    d = "enqueueDelayedAutoWork"
    e = {
        0x50,
        0x52,
        0x6f,
        0x94,
        0x71
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lmav;

.field e:I

.field f:Llzy;

.field g:Lodt;

.field h:Lojx;

.field i:Lojx;


# direct methods
.method public constructor <init>(Lmav;Loku;)V
    .locals 0

    iput-object p1, p0, Lmas;->d:Lmav;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmas;->c:Ljava/lang/Object;

    iget p1, p0, Lmas;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmas;->e:I

    iget-object p1, p0, Lmas;->d:Lmav;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lmav;->a(Llzy;Lnyy;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
