.class public Lszv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lcom/google/ar/core/Frame;

.field public final c:Lcom/google/ar/core/Pose;

.field public final d:Ltab;

.field public final e:Z

.field private final f:Lcom/google/ar/core/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lszv;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "szv"

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

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

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

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;Lcom/google/ar/core/Frame;Landroid/util/Size;Lcom/google/ar/core/Pose;Ltsi;Z)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p6, p0, Lszv;->e:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lszv;->f:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ltab;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lszv;->c:Lcom/google/ar/core/Pose;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object p2, p0, Lszv;->b:Lcom/google/ar/core/Frame;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lszv;->d:Ltab;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p3, p4, p5}, Ltab;-><init>(Landroid/util/Size;Lcom/google/ar/core/Pose;Ltsi;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/media/Image;FF)F
    .locals 4

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

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

    :goto_1
    aput p3, v1, p2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget-object p1, p1, v2

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

    :goto_3
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p3

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

    :goto_5
    aget p2, p3, p2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6
    int-to-double p0, p0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_8
    int-to-float v1, v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v3, Lcom/google/ar/core/Coordinates2d;->IMAGE_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, v1, v3, p3}, Lcom/google/ar/core/Frame;->transformCoordinates2d(Lcom/google/ar/core/Coordinates2d;[FLcom/google/ar/core/Coordinates2d;[F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    float-to-int v0, v3

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
    const/4 p3, 0x3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-int/2addr p0, p3

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

    :goto_13
    goto/32 :goto_23

    nop

    nop

    :goto_14
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    int-to-char p0, p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-int/2addr p2, p3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-float/2addr v1, v3

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    aget v3, p3, v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lcom/google/ar/core/Coordinates2d;->VIEW:Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

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

    :goto_1c
    double-to-float p0, p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d
    int-to-float v3, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    div-double/2addr p0, p2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/2addr p2, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_21
    float-to-int p2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

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

    :goto_25
    const-wide p2, 0x408f400000000000L    # 1000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 p0, p0, -0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-array v1, v0, [F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    const v0, 0xd

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lszv;->b:Lcom/google/ar/core/Frame;

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

    nop

    :goto_2d
    mul-float/2addr v3, p2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2e
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2f
    return p0

    nop

    :goto_30
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v0, v0, -0x3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_32
    new-array p3, v0, [F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aput p2, v1, v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b([FF)Lcom/google/ar/core/Anchor;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, v0, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lszv;->d:Ltab;

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
    sget-object p1, Lszv;->a:Lsdb;

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

    :goto_3
    const/4 p2, 0x0

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

    :goto_4
    invoke-virtual {v0, p1, p2}, Ltab;->a([FF)Lcom/google/ar/core/Pose;

    move-result-object p1

    nop

    nop

    :try_start_0
    new-instance p2, Lcom/google/ar/core/Pose;

    nop

    nop

    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->getTranslation()[F

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lszv;->c:Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->getRotationQuaternion()[F

    move-result-object v0

    nop

    invoke-direct {p2, p1, v0}, Lcom/google/ar/core/Pose;-><init>([F[F)V

    iget-object p0, p0, Lszv;->f:Lcom/google/ar/core/Session;

    nop

    invoke-virtual {p0, p2}, Lcom/google/ar/core/Session;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/SessionPausedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ar/core/exceptions/NotTrackingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ar/core/exceptions/ResourceExhaustedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

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
    goto :goto_a

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x1598

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

    :goto_9
    const/4 p0, 0x0

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p2, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->UPoSUznEw:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
