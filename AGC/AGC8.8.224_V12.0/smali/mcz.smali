.class public final Lmcz;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.ResourceManifestUploader"
    c = "ResourceManifestUploader.kt"
    d = "uploadResourceManifest$java_com_google_android_libraries_vision_visionkit_f250_internal_uploader_work_upload_upload"
    e = {
        0xa6
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Lonk;

.field final synthetic d:Llwc;


# direct methods
.method public constructor <init>(Llwc;Loku;[B)V
    .locals 0

    iput-object p1, p0, Lmcz;->d:Llwc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lmcz;->a:Ljava/lang/Object;

    iget p1, p0, Lmcz;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmcz;->b:I

    iget-object v0, p0, Lmcz;->d:Llwc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Llwc;->h(Llzy;Lobs;Lmdc;Llyf;Ljava/util/List;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
