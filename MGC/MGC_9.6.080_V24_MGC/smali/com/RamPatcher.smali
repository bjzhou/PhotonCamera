.class public Lcom/RamPatcher;
.super Ljava/lang/Object;
.source "PatcherSession.java"


# static fields
.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;


# instance fields
.field a:J

.field private final d:Landroid/content/Context;


# direct methods
.method private 166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/String;)Z
    .locals 8

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lcom/RamPatcher;->getLibraryOffset(Ljava/lang/String;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    if-gtz v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v5, Lcom/RamPatcher;->b:Ljava/util/Map;

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/util/Pair;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-wide v5, p0, Lcom/RamPatcher;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

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
    goto/16 :goto_4

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "StartLibAddreses"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-wide v0, p0, Lcom/RamPatcher;->a:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmp-long v7, v0, v5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_18
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v4

    nop

    nop

    :goto_1e
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1f
    if-nez v5, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_20
    sget-object v5, Lcom/RamPatcher;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    instance-of v5, v0, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v2}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_28
    sub-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v0, Lcom/RamPatcher;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    instance-of v5, v0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method

.method private 79b275543b9c1a5ce6592863ac39dd88m(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lcom/RamPatcher;->ReadyToPatch(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, ".so"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x11

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "lib"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const v0, 0xb

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    const-string v4, "0x1B757C"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const-string v1, "gcastartup"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4
    new-instance v2, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    const-string v4, "0x244F650"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v2, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

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

    nop

    :goto_b
    sput-object v0, Lcom/RamPatcher;->b:Ljava/util/Map;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v3, "Java_com_google_googlex_gcam_AndroidJniUtils_unlockBitmap"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    :goto_f
    new-instance v2, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v2, Landroid/util/Pair;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    const-string v4, "0x69528"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    const-string v1, "smartcapture_native"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_23

    nop

    nop

    :goto_1a
    const-string v3, "Java_com_google_android_libraries_vision_smartcapture_BurstCurator_nativeProcessRGBA"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v3, "Java_org_brotli_wrapper_dec_DecoderJNI_nativePush"

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "pairipcore"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    const-string v4, "0x23120"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    const-string v3, "ExecuteProgram"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, "rampatcher"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_25
    const-string v1, "brotli"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

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

    :goto_3
    const v0, 0x11

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    const-string v4, "hex_editor_addr_key_"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v5, p1}, Lcom/RamPatcher;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v4, p1}, Lcom/RamPatcher;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v2, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_17

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v2, "aGV4X2VkaXRvcl9jb3VudF9rZXk"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lcom/RamPatcher;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sput-object v0, Lcom/RamPatcher;->c:Ljava/util/Map;

    nop

    nop

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

    :goto_24
    const-string v5, "hex_editor_val_key_"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private native PatchDone()V
.end method

.method private native ReadyToPatch(Ljava/lang/String;)V
.end method

.method public static String2Byte(Ljava/lang/String;)[B
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    goto :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_4
    aput-byte v4, v0, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    div-int/lit8 v0, v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    array-length v3, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_10
    int-to-byte v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v3, v1, -0x2

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

    nop

    :goto_13
    return-object v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    new-array v0, v0, [B

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lt v2, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v5, 0x10

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static String2ByteLR(Ljava/lang/String;)[B
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-byte v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    goto :goto_f

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    new-array v0, v0, [B

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    div-int/lit8 v0, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    add-int/lit8 v3, v3, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    add-int/lit8 v5, v3, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput-byte v5, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    :goto_10
    if-lt v2, v4, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x10

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    array-length v4, v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    nop

    nop

    .local p0, "p0":Ljava/lang/String;
    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v6, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_16

    nop
.end method

.method private b8862cd5a9cebea9c64ac0fb19e4035dm(Ljava/lang/String;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "0x"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_14
    const-string v1, ""

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/Long;)J
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/RamPatcher;->a:J

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

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    goto/32 :goto_2

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    add-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v1, 0x1d

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    return-wide v0

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J
    .locals 4

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/RamPatcher;->a:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-long/2addr v0, v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    invoke-direct {p0, p1}, Lcom/RamPatcher;->b8862cd5a9cebea9c64ac0fb19e4035dm(Ljava/lang/String;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x16

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

    :goto_a
    return-wide v0

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    const-string v1, ""

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

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

    :goto_7
    const v1, 0x1e

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    return-object v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public static getApplicationUsingReflection()Landroid/app/Application;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_f

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    :goto_5
    const-string v2, "PatcherAddreses"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    const-string v3, "Error at getting application context"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto :goto_f

    nop

    nop

    nop

    :catch_1
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    return-object v1

    nop

    nop

    nop

    :catch_2
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    nop

    nop

    :catch_3
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x20

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v1, "android.app.AppGlobals"

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    const-string v2, "getInitialApplication"

    nop

    const/4 v3, 0x0

    nop

    nop

    new-array v3, v3, [Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Landroid/app/Application;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_a

    nop

    nop
.end method

.method private native getLibraryOffset(Ljava/lang/String;)J
.end method

.method private native readRegion(JI)Ljava/lang/String;
.end method

.method private native readRegionRight(JI)Ljava/lang/String;
.end method

.method private native setBytes(J[B)V
.end method

.method private native setDouble(JD)V
.end method

.method private native setFloat(JF)V
.end method

.method private native setInt(JI)V
.end method


# virtual methods
.method public setFixSrart(I)V
    .locals 6

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

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

    :goto_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Lcom/RamPatcher;->79b275543b9c1a5ce6592863ac39dd88m(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/io/ObjectInputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const-string v3, "0x"

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_b
    if-gez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_12

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    :goto_10
    goto/32 :goto_28

    nop

    nop

    :goto_11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    if-lt v2, v1, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    const v3, 0x7f130088

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    :goto_1a
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_20

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Lcom/RamPatcher;->getApplicationUsingReflection()Landroid/app/Application;

    move-result-object v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    :goto_27
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Lcom/RamPatcher;->PatchDone()V

    goto/32 :goto_26

    nop

    nop

    :goto_29
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    const-string v0, "gcastartup"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0, v0}, Lcom/RamPatcher;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2f
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setNativeFixSrart()V
    .locals 6

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_0
    const-string v5, "D503201F"

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

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_47

    nop

    :cond_0
    goto/32 :goto_46

    nop

    :goto_2
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_5
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

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

    :goto_8
    const-string v5, "MHgxQ0U0QUM"

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v5, "D503201F"

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v5, "MHgxQ0U1QkM"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_12
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_13
    const-string v5, "D503201F"

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

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

    nop

    nop

    :goto_18
    const-string v5, "MHgxRDA0Mjg"

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

    nop

    :goto_19
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    :goto_1a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v5, "D503201F"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1e
    const-string v5, "MHgxRDBDMzQ"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    const-string v5, "MHgxQ0UxOEM"

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v0, "c21hcnRjYXB0dXJlX25hdGl2ZQ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_4b

    nop

    nop

    :goto_27
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_28
    const-string v5, "MHgxQ0ZBQkM"

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v5, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v5, Ljava/lang/String;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2d
    const-string v5, "D503201F"

    nop

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

    nop

    :goto_2e
    const v1, 0x15

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0, v0}, Lcom/RamPatcher;->79b275543b9c1a5ce6592863ac39dd88m(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_30
    const-string v5, "D503201F"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_31
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0, v0}, Lcom/RamPatcher;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_36
    invoke-direct {p0}, Lcom/RamPatcher;->PatchDone()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3b
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3e
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string v5, "MHgxQ0ZBNzA"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x14

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v5, "D503201F"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_45
    const-string v5, "MHgxQ0UyQzQ"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_3a

    nop

    :goto_47
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v5, "D503201F"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_49
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4a
    check-cast v5, Ljava/lang/String;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v5, "MHgxRDBFNTA"

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4c
    goto/32 :goto_47

    nop

    nop

    :goto_4d
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_28

    nop

    nop

    :goto_52
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_53
    const-string v5, "D503201F"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v5, "D503201F"

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_55
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string v5, "MHgxQ0REQkM"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_57
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setPathAll(Ljava/util/Map;)V
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :cond_0
    :goto_2
    goto/32 :goto_15

    nop

    nop

    :goto_3
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_0

    nop

    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {v4}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2, v3, v4}, Lcom/RamPatcher;->setBytes(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0}, Lcom/RamPatcher;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Lcom/RamPatcher;->79b275543b9c1a5ce6592863ac39dd88m(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "gcastartup"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Lcom/RamPatcher;->PatchDone()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop
.end method

.method public setPathAllHEXEditor(Ljava/lang/String;)V
    .locals 6

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "Z2Nhc3RhcnR1cA"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2
    iget-object v1, p0, Lcom/RamPatcher;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v2, "Z2Nhc3RhcnR1cA"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/RamPatcher;->setStartupFixSrart()V

    :goto_7
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lcom/RamPatcher;->PatchDone()V

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    if-nez v4, :cond_9

    nop

    nop

    nop

    const-string v3, "0x"

    nop

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_2

    nop

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    :cond_2
    invoke-direct {p0, v2}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_9

    nop

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    nop

    invoke-static {v4}, Lcom/RamPatcher;->String2ByteLR(Ljava/lang/String;)[B

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2, v3, v4}, Lcom/RamPatcher;->setBytes(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/RamPatcher;->setNativeFixSrart()V

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v2}, Lcom/RamPatcher;->79b275543b9c1a5ce6592863ac39dd88m(Ljava/lang/String;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_10
    const-string v2, "c21hcnRjYXB0dXJlX25hdGl2ZQ"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    :goto_14
    const-string v5, "02000094"

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_15
    const-string v5, "MHg1NTE4MEYw"

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_18
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_34

    nop

    :goto_1d
    if-nez v2, :cond_6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_35

    nop

    :goto_1f
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_20
    invoke-direct {p0, p1}, Lcom/RamPatcher;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_33

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x16

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2b
    sget v2, Lcom/a;->aa:I

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

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2e
    invoke-static {v2}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0, p1}, Lcom/RamPatcher;->79b275543b9c1a5ce6592863ac39dd88m(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :cond_9
    :goto_33
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_36
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_37
    if-nez v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v3, :cond_b

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_b
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_39
    invoke-static {v5}, Lcom/RamPatcher;->String2ByteLR(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v0, Lcom/RamPatcher;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3d
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3e
    invoke-direct {p0, v2}, Lcom/RamPatcher;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    :goto_40
    goto/32 :goto_8

    nop

    nop

    :goto_41
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v2, "aGV4X2VkaXRvcl9saWJzX2tleQ"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v1, :cond_d

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_47
    invoke-direct {p0}, Lcom/RamPatcher;->PatchDone()V

    :goto_48
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public setStartupFixSrart()V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    :goto_1
    invoke-static {v0}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    const-string v5, "MHg1MDcxMTc0"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_a
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d
    const-string v5, "MHg1MDcxMTVD"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

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

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    const-string v5, "MHg1MDcxMTZD"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_16
    const-string v0, "Z2Nhc3RhcnR1cA"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    const-string v5, "D503201F"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    const-string v5, "D503201F"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v0}, Lcom/RamPatcher;->166277962e993c138a6b1f0c9b571cc0m(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v5, "D503201F"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v5, "D503201F"

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Lcom/RamPatcher;->PatchDone()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v5, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_23
    const-string v5, "MHg1MDcxMTY0"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, v3, v4, v5}, Lcom/RamPatcher;->setBytes(J[B)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v5}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, v5}, Lcom/RamPatcher;->f69e1d7d7787adf5ffdb07c7288771a7m(Ljava/lang/String;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    invoke-static {v5}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, v0}, Lcom/RamPatcher;->79b275543b9c1a5ce6592863ac39dd88m(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
