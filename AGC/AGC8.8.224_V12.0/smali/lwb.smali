.class final Llwb;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.ResourceDeleter"
    c = "Deleter.kt"
    d = "deleteResources"
    e = {
        0x3d,
        0x8d,
        0x4e,
        0xa5,
        0x52,
        0x5d,
        0xb3,
        0x62
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field synthetic e:Ljava/lang/Object;

.field final synthetic f:Llwc;

.field g:I

.field h:Llzy;

.field i:Ljava/util/List;

.field j:Ljava/util/List;


# direct methods
.method public constructor <init>(Llwc;Loku;)V
    .locals 0

    iput-object p1, p0, Llwb;->f:Llwc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llwb;->e:Ljava/lang/Object;

    iget p1, p0, Llwb;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llwb;->g:I

    iget-object p1, p0, Llwb;->f:Llwc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Llwc;->b(Llzy;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
