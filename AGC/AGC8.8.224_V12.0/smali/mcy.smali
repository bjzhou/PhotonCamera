.class public final Lmcy;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader$uploadResourceManifest$$inlined$fold$1"
    c = "ResourceManifestUploader.kt"
    d = "emit"
    e = {
        0xae,
        0xaf,
        0xb0,
        0xb1,
        0xb2
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Lonk;

.field final synthetic d:Lotr;


# direct methods
.method public constructor <init>(Lotr;Loku;[B)V
    .locals 0

    iput-object p1, p0, Lmcy;->d:Lotr;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmcy;->a:Ljava/lang/Object;

    iget p1, p0, Lmcy;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmcy;->b:I

    iget-object p1, p0, Lmcy;->d:Lotr;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lotr;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
