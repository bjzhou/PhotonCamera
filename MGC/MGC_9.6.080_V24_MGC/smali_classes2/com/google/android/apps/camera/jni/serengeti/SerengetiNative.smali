.class public final Lcom/google/android/apps/camera/jni/serengeti/SerengetiNative;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "gcastartup"

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const-class p0, Lcom/google/android/apps/camera/jni/serengeti/SerengetiNative;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-static {p0, v0}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static final a(Liyx;)Lizf;
    .locals 4

    goto/32 :goto_8

    nop

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, p0, v3, v1, v2}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Ltjv;->a:Ltjv;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lizf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Lcom/google/android/apps/camera/jni/serengeti/SerengetiNative;->nativeOnSerengetiEvent([B)[B

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    invoke-static {p0}, Ltkg;->E(Ltkg;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    sget-object v2, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ltis;->h()[B

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v2, Ltjv;->a:Ltjv;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    array-length v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lizf;->a:Lizf;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public static final b(Liyx;Lizg;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {v0, p1}, Liyy;-><init>(Lizg;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Liyy;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltis;->h()[B

    move-result-object p0

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

    :goto_4
    invoke-static {p0, v0}, Lcom/google/android/apps/camera/jni/serengeti/SerengetiNative;->nativeOnSerengetiEventBlocking([BLcom/google/android/apps/camera/jni/serengeti/SerengetiNative$SerengetiResponseCallbackNative;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final native nativeInitialize(Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V
.end method

.method private static final native nativeOnSerengetiEvent([B)[B
.end method

.method private static final native nativeOnSerengetiEventBlocking([BLcom/google/android/apps/camera/jni/serengeti/SerengetiNative$SerengetiResponseCallbackNative;)V
.end method
