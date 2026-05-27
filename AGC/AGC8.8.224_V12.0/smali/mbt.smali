.class public final Lmbt;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneAttachmentUploader"
    c = "OneAttachmentUploader.kt"
    d = "transmitUploadError"
    e = {
        0x96,
        0xa8,
        0xb3,
        0xb9
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public d:Lmbi;

.field public e:Llyf;

.field public f:Llwq;

.field public g:Lodt;

.field public h:Lods;

.field final synthetic i:Ldqx;


# direct methods
.method public constructor <init>(Ldqx;Loku;[B[B)V
    .locals 0

    iput-object p1, p0, Lmbt;->i:Ldqx;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmbt;->b:Ljava/lang/Object;

    iget p1, p0, Lmbt;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmbt;->c:I

    iget-object p1, p0, Lmbt;->i:Ldqx;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Ldqx;->o(Lmbi;Lmdf;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
