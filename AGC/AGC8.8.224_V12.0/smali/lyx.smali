.class final Llyx;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.UploadUpdateDao"
    c = "UploadUpdateDao.kt"
    d = "updateResourceProgressForUpdatedAttachment$suspendImpl"
    e = {
        0x27,
        0x29,
        0x2b,
        0x2d
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Z

.field c:D

.field synthetic d:Ljava/lang/Object;

.field e:I

.field f:Llyf;

.field g:Lomk;

.field final synthetic h:Llzn;


# direct methods
.method public constructor <init>(Llyz;Loku;)V
    .locals 0

    check-cast p1, Llzn;

    iput-object p1, p0, Llyx;->h:Llzn;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Llyx;->d:Ljava/lang/Object;

    iget p1, p0, Llyx;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llyx;->e:I

    iget-object v0, p0, Llyx;->h:Llzn;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Llyz;->k(Llyz;Llyf;Llwq;ZLomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
