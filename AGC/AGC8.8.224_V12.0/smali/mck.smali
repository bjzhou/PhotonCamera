.class final Lmck;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneResourceUploaderImpl"
    c = "OneResourceUploaderImpl.kt"
    d = "uploadOneResource"
    e = {
        0x3c,
        0x40,
        0x41,
        0x47,
        0xfb,
        0x4c,
        0x58
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lmcl;

.field e:I

.field f:Llzy;

.field g:Ljava/util/List;

.field h:Lobs;

.field i:Lmdc;

.field j:Lodt;

.field k:Llzz;

.field l:Ljava/util/List;


# direct methods
.method public constructor <init>(Lmcl;Loku;)V
    .locals 0

    iput-object p1, p0, Lmck;->d:Lmcl;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmck;->c:Ljava/lang/Object;

    iget p1, p0, Lmck;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmck;->e:I

    iget-object p1, p0, Lmck;->d:Lmcl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lmcl;->a(Llzy;Llyg;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
