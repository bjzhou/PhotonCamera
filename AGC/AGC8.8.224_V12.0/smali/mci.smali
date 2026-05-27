.class final Lmci;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneResourceUploaderImpl"
    c = "OneResourceUploaderImpl.kt"
    d = "constructResourceManifest"
    e = {
        0x9f
    }
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lmcl;

.field c:I

.field d:Lmcl;

.field e:Llyf;

.field f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lmcl;Loku;)V
    .locals 0

    iput-object p1, p0, Lmci;->b:Lmcl;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmci;->a:Ljava/lang/Object;

    iget p1, p0, Lmci;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmci;->c:I

    iget-object p1, p0, Lmci;->b:Lmcl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lmcl;->c(Llzy;Llyf;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
