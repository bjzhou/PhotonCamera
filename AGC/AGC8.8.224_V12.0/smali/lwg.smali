.class final Llwg;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.AirlockUpdateDao"
    c = "AirlockUpdateDao.kt"
    d = "updateAirlockFileState$suspendImpl"
    e = {
        0x6c,
        0x6f
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field d:I

.field e:Llul;

.field final synthetic f:Llwp;


# direct methods
.method public constructor <init>(Llwh;Loku;)V
    .locals 0

    check-cast p1, Llwp;

    iput-object p1, p0, Llwg;->f:Llwp;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llwg;->c:Ljava/lang/Object;

    iget p1, p0, Llwg;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llwg;->d:I

    iget-object p1, p0, Llwg;->f:Llwp;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Llwh;->b(Llwh;Ljava/util/List;Llul;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
