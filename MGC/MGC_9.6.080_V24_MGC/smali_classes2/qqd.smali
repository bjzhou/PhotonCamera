.class public final Lqqd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(J[BLpck;Lcom/google/android/libraries/camera/exif/ExifInterface;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lqqd;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lqqd;->a:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lqqd;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lqqd;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrtm;Lrtm;Ltxm;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

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
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iput-wide v0, p0, Lqqd;->a:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x11

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lqqd;->d:Ljava/lang/Object;

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

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lqqd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lqqd;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public static a(J[BLpck;Lcom/google/android/libraries/camera/exif/ExifInterface;Lpic;)Lqqd;
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

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

    :goto_1
    return-object p5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v3, p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p5, p4}, Lpic;->L(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct/range {v0 .. v5}, Lqqd;-><init>(J[BLpck;Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    move-object v4, p3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    move-object v5, p4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    new-instance p5, Lqqd;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    if-nez p5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v0, p5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    move-wide v1, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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
.end method
