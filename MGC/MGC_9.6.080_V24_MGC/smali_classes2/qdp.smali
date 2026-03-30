.class public final Lqdp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput p1, p0, Lqdp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-wide p2, p0, Lqdp;->a:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(JI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lqdp;->b:I

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

    :goto_3
    iput-wide p1, p0, Lqdp;->a:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static f(I)Lryy;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {v0, p0, v1, v2}, Lryy;->I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_4
    new-instance p0, Lsbt;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-direct {p0, v0}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    :goto_6
    invoke-static {p0}, Lqdp;->g(I)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    const/4 v2, 0x6

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

    :goto_14
    invoke-static {v0, p0}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    if-eq p0, v1, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    nop
.end method

.method private static g(I)Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x3

    nop

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
    const/4 p0, 0x0

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

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

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    if-ne p0, v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x4

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

    :goto_8
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto :goto_3

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;
    .locals 8

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-direct/range {v1 .. v7}, Lphd;-><init>(Landroid/hardware/camera2/CaptureResult$Key;Lryy;JJ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p0

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

    :goto_4
    int-to-long v6, v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
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

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    move-object v2, p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
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

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    move-object v3, p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    iget v0, p0, Lqdp;->b:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_f
    new-instance p0, Lphd;

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

    :goto_10
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    iget-wide v4, p0, Lqdp;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpgd;ZZZ)Lpjg;
    .locals 8

    goto/32 :goto_31

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v7, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3, v2}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6f

    nop

    nop

    :goto_7
    invoke-interface {p1}, Lpgd;->e()Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_46

    nop

    nop

    :goto_d
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p2, p4}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_f
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Lpjg;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p3, p2}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_12
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p2, p3}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    invoke-direct {p4, p2}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_18
    if-nez p4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

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

    nop

    :goto_1b
    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p2, v2}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1e
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v4, v3}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p2, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p4, p3}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Lpgd;->e()Ljava/lang/Integer;

    move-result-object p3

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p1}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2a
    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2b
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2d
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez p4, :cond_4

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_4
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x1e

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_32
    move-object p2, p4

    nop

    nop

    :goto_33
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_25

    nop

    :goto_36
    goto/32 :goto_2d

    nop

    nop

    :goto_37
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_39
    invoke-static {v1}, Lqdp;->f(I)Lryy;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0, p2, v1}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3b
    if-nez p3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_40
    if-eq p2, v1, :cond_6

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_42
    const/4 v6, 0x4

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_68

    nop

    nop

    :goto_44
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v4, Lsbt;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_46
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_48
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, p1, p2}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, p1, p2}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4b
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {p1}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object v3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {p4, p2, v3}, Lryy;->H(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4e
    invoke-static {v3, v4, v5, v6, v7}, Lryy;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v3

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

    nop

    :goto_4f
    new-instance p4, Lsbt;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v4, Lsbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_52
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, p3, v3}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v2, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_58
    invoke-direct {v4, v3}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {p2, p3}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_5a
    invoke-direct {p0, p1}, Lpjg;-><init>(Lryy;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_5c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_7
    goto/32 :goto_35

    nop

    :goto_5e
    new-instance v3, Lsbt;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5f
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_61
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_62
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_63
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {p1}, Lpgd;->e()Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_67
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p0, p3, v4}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_6d
    invoke-interface {p1}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    new-instance v2, Lsbt;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p0, v1, v3}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    new-instance p4, Lsbt;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method public final c(Lpgd;ZZZ)Lpjg;
    .locals 6

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v4, Lsbt;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_22

    nop

    :goto_2
    goto/32 :goto_24

    nop

    nop

    :goto_3
    invoke-direct {v5, v4}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_5
    goto/32 :goto_27

    nop

    nop

    :goto_6
    invoke-direct {v4, v3}, Lsbt;-><init>(Ljava/lang/Object;)V

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p2, v4}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_42

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_e
    invoke-virtual {p0, v1, v3}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v3, v1, v4}, Lryy;->H(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_12
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, v3}, Lsbt;-><init>(Ljava/lang/Object;)V

    :goto_14
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p2, v4}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p1, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_7

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p3, v3}, Lsbt;-><init>(Ljava/lang/Object;)V

    :goto_22
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_24
    new-instance p3, Lsbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, p3}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Lpjg;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_28
    if-eq v4, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v4, Lsbt;

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

    :goto_2f
    new-instance v5, Lsbt;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v4, 0x6

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_34
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v4, p3}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    :goto_37
    if-eq p1, v2, :cond_6

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_6
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3b
    new-instance v3, Lsbt;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_3c
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3d
    invoke-interface {p1}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3e
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3f
    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_41
    new-instance p1, Lsbt;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v4}, Lqdp;->g(I)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_4d

    nop

    nop

    :goto_45
    invoke-virtual {p0, p2, p3}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_46
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_31

    nop

    nop

    :goto_48
    if-nez p3, :cond_7

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    :goto_49
    invoke-interface {p1}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4a
    invoke-static {v2}, Lqdp;->f(I)Lryy;

    move-result-object v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v2, 0x1

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

    :goto_4d
    new-instance p1, Lsbt;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0, p1}, Lpjg;-><init>(Lryy;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_50
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, p2, p1}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_53
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_54
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {v3, v2}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p1}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object v4

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 p3, 0x4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0, p2, v5}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method

.method public final d(Lpgd;ZZZ)Lpjg;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lpjg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lpjg;-><init>(Lryy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lqdp;->e(Lpgd;ZZZ)Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpgd;ZZZ)Ljava/util/Set;
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/HashSet;

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

    :goto_4
    invoke-static {p2, v2}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object p2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v3, v2}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_18

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p2, 0x3

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

    :goto_d
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_c

    nop

    nop

    :goto_f
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_10
    if-nez p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    new-instance v3, Lsbt;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p2, p1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p2, Lsbt;

    nop

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

    :goto_17
    move-object p3, v2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_1a
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    if-eqz p3, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p3, Lsbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v3, v2}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p2, Lsbt;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p2, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_24
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p1}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, p2, v3}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2b
    invoke-direct {v3, v2}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2e
    new-instance v2, Lsbt;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_30
    if-nez p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p1}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v2, p3}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_36
    invoke-interface {p1}, Lpgd;->b()Ljava/lang/Integer;

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

    nop

    :goto_37
    new-instance p1, Lsbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p1, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz p2, :cond_5

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

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_3a
    invoke-direct {v2, p3}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v1, v3}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, v2, p2}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    :goto_3f
    invoke-virtual {p0, p3, v3}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_40
    new-instance v3, Lsbt;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_41
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p3, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_45
    new-instance v3, Lsbt;

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

    nop

    :goto_46
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_47
    goto/32 :goto_1e

    nop

    nop

    :goto_48
    invoke-virtual {p0, p2, p1}, Lqdp;->a(Landroid/hardware/camera2/CaptureResult$Key;Lryy;)Lphd;

    move-result-object p0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-object v0

    nop

    :goto_4a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4c
    move-object p1, p2

    nop

    nop

    :goto_4d
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_4f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_50
    goto :goto_4d

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_4b

    nop

    nop

    :goto_52
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_53
    goto/32 :goto_49

    nop

    nop

    :goto_54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    nop
.end method
