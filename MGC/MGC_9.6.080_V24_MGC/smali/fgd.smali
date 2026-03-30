.class final Lfgd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfhi;


# instance fields
.field private final a:[Landroid/hardware/Camera$CameraInfo;

.field private final b:I


# direct methods
.method private constructor <init>([Landroid/hardware/Camera$CameraInfo;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfgd;->a:[Landroid/hardware/Camera$CameraInfo;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lfgd;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static c()Lfgd;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string v2, "Exception while creating CameraDeviceInfo"

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

    :goto_1
    const v0, 0x11

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    const/4 v2, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    :catch_0
    move-exception v0

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_7
    aget-object v3, v1, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    :goto_9
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    add-int/2addr v0, v2

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget-object v3, v1, v0

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

    :goto_10
    sget-object v1, Lfgm;->a:Lfht;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_16
    invoke-static {v1, v2, v0}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    if-gez v0, :cond_2

    nop

    goto/32 :goto_21

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    nop

    nop

    new-array v1, v0, [Landroid/hardware/Camera$CameraInfo;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ge v2, v0, :cond_1

    nop

    nop

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v1, v2

    nop

    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v1, v2}, Lfgd;-><init>([Landroid/hardware/Camera$CameraInfo;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    return-object v0

    nop

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Lfgd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    move v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lfgd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(I)Lfhh;
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lfgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    aget-object p0, p0, p1

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
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfgd;->a:[Landroid/hardware/Camera$CameraInfo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-direct {p1, p0}, Lfgc;-><init>(Landroid/hardware/Camera$CameraInfo;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
