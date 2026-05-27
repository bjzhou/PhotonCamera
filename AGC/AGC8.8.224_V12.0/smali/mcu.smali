.class public final Lmcu;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader"
    c = "ResourceManifestUploader.kt"
    d = "updateHandle"
    e = {
        0x40
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Lmdd;

.field final synthetic d:Llwc;


# direct methods
.method public constructor <init>(Llwc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Lmcu;->d:Llwc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmcu;->a:Ljava/lang/Object;

    iget p1, p0, Lmcu;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmcu;->b:I

    iget-object p1, p0, Lmcu;->d:Llwc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Llwc;->f(Lmdd;Ljava/lang/String;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
