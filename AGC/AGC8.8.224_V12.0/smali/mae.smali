.class final Lmae;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.enqueue.ResourceChecker"
    c = "ResourceChecker.kt"
    d = "checkResources"
    e = {
        0x23,
        0x29,
        0x2e,
        0x36
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lmaf;

.field d:I

.field e:Lmaf;

.field f:Llzy;

.field g:Lonk;

.field h:Ljava/util/Iterator;

.field i:Llyf;

.field j:Ljava/util/Iterator;

.field k:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lmaf;Loku;)V
    .locals 0

    iput-object p1, p0, Lmae;->c:Lmaf;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmae;->b:Ljava/lang/Object;

    iget p1, p0, Lmae;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmae;->d:I

    iget-object p1, p0, Lmae;->c:Lmaf;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lmaf;->a(Llzy;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
