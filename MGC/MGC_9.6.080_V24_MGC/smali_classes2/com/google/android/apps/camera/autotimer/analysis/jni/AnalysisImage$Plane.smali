.class Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage$Plane;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lprv;


# instance fields
.field private final a:Lprv;


# direct methods
.method public constructor <init>(Lprv;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage$Plane;->a:Lprv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage$Plane;->a:Lprv;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getPixelStride()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lprv;->getPixelStride()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage$Plane;->a:Lprv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public getRowStride()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage$Plane;->a:Lprv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lprv;->getRowStride()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
