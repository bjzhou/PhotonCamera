.class final Lffo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfhi;


# instance fields
.field private final a:Landroid/hardware/camera2/CameraManager;

.field private final b:[Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)V
    .locals 8

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    iput v2, p0, Lffo;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2
    move v2, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lffo;->a:Landroid/hardware/camera2/CameraManager;

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

    :goto_6
    move v2, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    if-eq v2, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    sget-object v5, Lffy;->a:Lfht;

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

    :goto_a
    array-length v4, p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v5, v6, v4}, Lfhu;->d(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    goto/32 :goto_21

    nop

    nop

    :goto_d
    const-string v7, "\'"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    goto/16 :goto_2a

    nop

    :goto_f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v6, v7}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

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

    :goto_11
    goto :goto_1b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

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

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_15
    const-string v6, "Couldn\'t get characteristics of camera \'"

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

    nop

    :goto_16
    iput-object p2, p0, Lffo;->b:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

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

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    :goto_1c
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1e
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_c

    nop

    nop

    :goto_20
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_22
    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq v3, v1, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lt v0, v4, :cond_4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_0
    aget-object v4, p2, v0

    nop

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    nop

    nop

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_27
    if-eq v4, v2, :cond_5

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

    :cond_5
    goto/32 :goto_8

    nop

    nop

    :goto_28
    move v3, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lffo;->c:I

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
    return p0

    nop

    nop

    nop
.end method

.method public final b(I)Lfhh;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    nop

    :goto_1
    iget-object v0, p0, Lffo;->b:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    aget-object p1, v0, p1

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lffo;->a:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lffn;

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0}, Lffn;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_0

    nop

    nop

    nop
.end method
