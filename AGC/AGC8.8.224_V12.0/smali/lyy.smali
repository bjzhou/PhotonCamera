.class final Llyy;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.UploadUpdateDao"
    c = "UploadUpdateDao.kt"
    d = "updateResourceTransferHandle"
    e = {
        0x61
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Llyz;

.field c:I

.field d:Llyf;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llyz;Loku;)V
    .locals 0

    iput-object p1, p0, Llyy;->b:Llyz;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Llyy;->a:Ljava/lang/Object;

    iget p1, p0, Llyy;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Llyy;->c:I

    iget-object p1, p0, Llyy;->b:Llyz;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Llyz;->l(Llyf;Ljava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
