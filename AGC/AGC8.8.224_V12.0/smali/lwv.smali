.class final Llwv;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.BatchUploadUpdateDao"
    c = "BatchUploadUpdateDao.kt"
    d = "failPermanently$suspendImpl"
    e = {
        0x37,
        0x3f
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field c:Ljava/util/List;

.field final synthetic d:Llwy;

.field e:Llwy;


# direct methods
.method public constructor <init>(Llww;Loku;)V
    .locals 0

    check-cast p1, Llwy;

    iput-object p1, p0, Llwv;->d:Llwy;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llwv;->a:Ljava/lang/Object;

    iget p1, p0, Llwv;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llwv;->b:I

    iget-object p1, p0, Llwv;->d:Llwy;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Llww;->b(Llww;Ljava/util/List;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
