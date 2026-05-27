.class final Lmch;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneResourceUploaderImpl"
    c = "OneResourceUploaderImpl.kt"
    d = "checkReadyForUpload"
    e = {
        0x68,
        0x6d,
        0x74,
        0xfb
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field synthetic f:Ljava/lang/Object;

.field final synthetic g:Lmcl;

.field h:I

.field i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lmcl;Loku;)V
    .locals 0

    iput-object p1, p0, Lmch;->g:Lmcl;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmch;->f:Ljava/lang/Object;

    iget p1, p0, Lmch;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmch;->h:I

    iget-object p1, p0, Lmch;->g:Lmcl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lmcl;->b(Llzy;Llyg;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
