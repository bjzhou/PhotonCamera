.class final Llyj;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.UploadQueryDao"
    c = "UploadQueryDao.kt"
    d = "failPermanentlyInvalidUploads$suspendImpl"
    e = {
        0x38,
        0x39,
        0x3a
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Llys;

.field d:Llys;


# direct methods
.method public constructor <init>(Llyl;Loku;)V
    .locals 0

    check-cast p1, Llys;

    iput-object p1, p0, Llyj;->c:Llys;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llyj;->a:Ljava/lang/Object;

    iget p1, p0, Llyj;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llyj;->b:I

    iget-object p1, p0, Llyj;->c:Llys;

    invoke-static {p1, p0}, Llyl;->b(Llyl;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
