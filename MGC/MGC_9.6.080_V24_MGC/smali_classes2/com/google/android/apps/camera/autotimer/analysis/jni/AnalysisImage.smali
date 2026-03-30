.class Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lprw;


# direct methods
.method public constructor <init>(Lprw;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage;->a:Lprw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Lprw;->a()I

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_12

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    :goto_13
    const/16 v1, 0x23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method getHeight()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage;->a:Lprw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    invoke-interface {p0}, Lprw;->b()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method getPlanes()[Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage$Plane;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v2, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage$Plane;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-array v0, v0, [Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage$Plane;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    if-lt v1, v2, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-interface {p0}, Lprw;->g()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_11

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_13
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v3, Lprv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage;->a:Lprw;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v2, v3}, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage$Plane;-><init>(Lprv;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop
.end method

.method getWidth()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lprw;->c()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/autotimer/analysis/jni/AnalysisImage;->a:Lprw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
