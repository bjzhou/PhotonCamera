.class final Lmat;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.F250WorkEnqueuerImpl"
    c = "F250WorkEnqueuerImpl.kt"
    d = "enqueueUploadWork"
    e = {
        0x32,
        0x34,
        0x3b,
        0x45,
        0x93,
        0x47
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

    iput-object p1, p0, Lmat;->d:Lmav;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmat;->c:Ljava/lang/Object;

    iget p1, p0, Lmat;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmat;->e:I

    iget-object p1, p0, Lmat;->d:Lmav;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lmav;->b(Llzy;Laxf;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
