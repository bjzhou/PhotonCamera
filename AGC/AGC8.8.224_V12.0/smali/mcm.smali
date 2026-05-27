.class public final Lmcm;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader"
    c = "ResourceManifestUploader.kt"
    d = "completeResource"
    e = {
        0x59,
        0x62
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public d:Lmdd;

.field final synthetic e:Llwc;


# direct methods
.method public constructor <init>(Llwc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Lmcm;->e:Llwc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmcm;->b:Ljava/lang/Object;

    iget p1, p0, Lmcm;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmcm;->c:I

    iget-object p1, p0, Lmcm;->e:Llwc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Llwc;->c(Lmdd;Ljava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
