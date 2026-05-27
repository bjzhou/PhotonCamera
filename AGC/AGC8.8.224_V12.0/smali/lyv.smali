.class final Llyv;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.UploadUpdateDao"
    c = "UploadUpdateDao.kt"
    d = "pauseResourceAndAttachment$suspendImpl"
    e = {
        0x55,
        0x56
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field c:Llwq;

.field final synthetic d:Llzn;

.field e:Llzn;


# direct methods
.method public constructor <init>(Llyz;Loku;)V
    .locals 0

    check-cast p1, Llzn;

    iput-object p1, p0, Llyv;->d:Llzn;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llyv;->a:Ljava/lang/Object;

    iget p1, p0, Llyv;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llyv;->b:I

    iget-object p1, p0, Llyv;->d:Llzn;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Llyz;->d(Llyz;Llyf;Llwq;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
