.class public final synthetic Lcom/google/ar/core/ArCoreApkJniAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public synthetic f$0:J

.field public synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-wide p3, p0, Lcom/google/ar/core/ArCoreApkJniAdapter$$ExternalSyntheticLambda0;->f$1:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p1, p0, Lcom/google/ar/core/ArCoreApkJniAdapter$$ExternalSyntheticLambda0;->f$0:J

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
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/google/ar/core/ArCoreApkJniAdapter$$ExternalSyntheticLambda0;->f$0:J

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

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget-wide v2, p0, Lcom/google/ar/core/ArCoreApkJniAdapter$$ExternalSyntheticLambda0;->f$1:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    sget p0, Lcom/google/ar/core/ArCoreApkJniAdapter;->a:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget p0, p1, Lcom/google/ar/core/ArCoreApk$Availability;->nativeCode:I

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

    :goto_b
    const v1, 0x1e

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_d
    check-cast p1, Lcom/google/ar/core/ArCoreApk$Availability;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/ar/core/ArCoreApkJniAdapter;->nativeInvokeAvailabilityCallback(JJI)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
