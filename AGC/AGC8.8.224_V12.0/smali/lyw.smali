.class final Llyw;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.UploadUpdateDao"
    c = "UploadUpdateDao.kt"
    d = "updateResourceProgress"
    e = {
        0x70
    }
.end annotation


# instance fields
.field a:D

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Llyz;

.field d:I

.field e:Llyf;


# direct methods
.method public constructor <init>(Llyz;Loku;)V
    .locals 0

    iput-object p1, p0, Llyw;->c:Llyz;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Llyw;->b:Ljava/lang/Object;

    iget p1, p0, Llyw;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llyw;->d:I

    iget-object p1, p0, Llyw;->c:Llyz;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Llyz;->h(Llyf;DLoku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
