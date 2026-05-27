.class final Llyk;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.UploadQueryDao"
    c = "UploadQueryDao.kt"
    d = "getOldestValidUploadAndSetResourceToUploadInProgress$suspendImpl"
    e = {
        0x80,
        0x81
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field c:I

.field d:Ljava/util/List;

.field final synthetic e:Llys;


# direct methods
.method public constructor <init>(Llyl;Loku;)V
    .locals 0

    check-cast p1, Llys;

    iput-object p1, p0, Llyk;->e:Llys;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llyk;->b:Ljava/lang/Object;

    iget p1, p0, Llyk;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llyk;->c:I

    iget-object p1, p0, Llyk;->e:Llys;

    invoke-static {p1, p0}, Llyl;->d(Llyl;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
