.class public final Lpnn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpse;


# instance fields
.field public final a:Landroid/hardware/camera2/MultiResolutionImageReader;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/Long;

.field private final g:Luen;

.field private final h:Lpuq;


# direct methods
.method public constructor <init>(Ljava/util/Collection;IILjava/lang/Long;Lpuq;)V
    .locals 2

    goto/32 :goto_29

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_1
    const-string p5, "ForwardingExperimental"

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

    :goto_2
    const/4 p3, 0x0

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

    :goto_3
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p4, Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    invoke-direct {p2, p3, p1}, Luen;-><init>(ZLucu;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p4, p1, p2, p3}, Landroid/hardware/camera2/MultiResolutionImageReader;-><init>(Ljava/util/Collection;II)V

    goto/32 :goto_a

    nop

    nop

    :goto_8
    move-object p1, p4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    move-object p1, p4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    iput p2, p0, Lpnn;->d:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_10
    iput-object p1, p0, Lpnn;->a:Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    iput-object p4, p0, Lpnn;->f:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    invoke-static {p5, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, " This device doesn\'t support newMultiResolutionImageReaderInstance with usage flag. Creating one without usage flags."

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p2, Luen;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p1, Luer;->a:Luer;

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

    nop

    nop

    :goto_20
    iput p3, p0, Lpnn;->e:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p1, p0, Lpnn;->b:Ljava/util/HashMap;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_21

    nop

    nop

    :goto_24
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_25
    iput-object p2, p0, Lpnn;->g:Luen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_26
    iput-object p5, p0, Lpnn;->h:Lpuq;

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

    :goto_27
    goto/16 :goto_17

    nop

    :goto_28
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x18

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p4, Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    :goto_2c
    goto/32 :goto_d

    nop

    nop

    :goto_2d
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lnys;->a:[I

    nop

    nop

    nop

    const/16 v1, 0xc

    nop

    invoke-static {v0, v1}, Lnys;->a([II)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/camera/experimental2024_system/ExperimentalMultiResolutionImageReaderExtensions;->newInstance(Ljava/util/Collection;IIJ)Landroid/hardware/camera2/MultiResolutionImageReader;

    move-result-object p1

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    :cond_3
    new-instance p4, Ljava/lang/RuntimeException;

    nop

    nop

    const-string p5, "this device doesn\'t support newMultiResolutionImageReaderInstance with usage flag"

    nop

    invoke-direct {p4, p5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p4

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p4

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_30
    iput-object p1, p0, Lpnn;->c:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_31
    invoke-direct {p4, p1, p2, p3}, Landroid/hardware/camera2/MultiResolutionImageReader;-><init>(Ljava/util/Collection;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(Ludp;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpnn;->a:Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpnn;->g:Luen;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v3, 0x25b

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    nop

    :goto_a
    const v0, 0xc

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    invoke-static {v3, v0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->close()V

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop
.end method
