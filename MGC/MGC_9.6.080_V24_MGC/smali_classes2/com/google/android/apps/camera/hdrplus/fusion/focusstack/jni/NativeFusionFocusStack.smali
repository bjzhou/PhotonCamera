.class public Lcom/google/android/apps/camera/hdrplus/fusion/focusstack/jni/NativeFusionFocusStack;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liql;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private static native nativeAdjustSecondaryRoi([B)[B
.end method

.method private static native nativeInitialize([B)Z
.end method

.method private static native nativeProcess([B[BLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;)[B
.end method

.method private static native nativeShouldTriggerFusion([B[B)Z
.end method


# virtual methods
.method public final a(Liqm;)Liqn;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    :try_start_0
    invoke-virtual {p1}, Ltis;->h()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lcom/google/android/apps/camera/hdrplus/fusion/focusstack/jni/NativeFusionFocusStack;->nativeAdjustSecondaryRoi([B)[B

    move-result-object p0

    nop

    nop

    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object p1

    nop

    nop

    sget-object v0, Liqn;->a:Liqn;

    nop

    nop

    nop

    nop

    array-length v1, p0

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    invoke-static {v0, p0, v2, v1, p1}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p0

    nop

    invoke-static {p0}, Ltkg;->E(Ltkg;)V

    check-cast p0, Liqn;

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Liqn;->a:Liqn;

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
.end method

.method public final b(Liqp;Liqt;Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;)Liqu;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Ltis;->h()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ltis;->h()[B

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p0, p1, p3, p4}, Lcom/google/android/apps/camera/hdrplus/fusion/focusstack/jni/NativeFusionFocusStack;->nativeProcess([B[BLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;Lcom/google/android/apps/camera/hdrplus/fusion/api/FusionProgressCallback;)[B

    move-result-object p0

    nop

    nop

    nop

    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object p1

    nop

    sget-object p2, Liqu;->a:Liqu;

    nop

    nop

    nop

    array-length p3, p0

    nop

    nop

    nop

    const/4 p4, 0x0

    nop

    nop

    nop

    invoke-static {p2, p0, p4, p3, p1}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ltkg;->E(Ltkg;)V

    check-cast p0, Liqu;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p1, Liqu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    iget-object p1, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    check-cast p0, Liqu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Liqu;->a:Liqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Liqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Liqs;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lcom/google/android/apps/camera/hdrplus/fusion/focusstack/jni/NativeFusionFocusStack;->nativeInitialize([B)Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ltis;->h()[B

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public final d(Liqv;Liqt;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/apps/camera/hdrplus/fusion/focusstack/jni/NativeFusionFocusStack;->nativeShouldTriggerFusion([B[B)Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ltis;->h()[B

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ltis;->h()[B

    move-result-object p1

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

    :goto_3
    return p0

    nop

    nop

    nop

    nop
.end method
