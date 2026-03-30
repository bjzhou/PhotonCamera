.class public final Ltii;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Ljava/lang/Long;

.field public final d:Ltib;

.field public final e:Ljava/lang/Integer;

.field private final f:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ltii;->b:Landroid/graphics/Bitmap;

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

    :goto_2
    iput-object p1, p0, Ltii;->f:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ltii;->a:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Ltii;->e:Ljava/lang/Integer;

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

    :goto_6
    iput-object p3, p0, Ltii;->c:Ljava/lang/Long;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Ltii;->d:Ltib;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lnyc;)Landroid/os/Bundle;
    .locals 10

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    iget p0, p1, Lnyc;->e:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    const v0, 0x9

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

    :goto_6
    const/high16 p0, 0x2000000

    nop

    nop

    :goto_7
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Ltii;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_9
    const-string p0, "lens_transition_type"

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

    :goto_a
    double-to-float p0, p0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    and-int/lit8 p0, p0, 0x4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_10
    div-float/2addr p0, p1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

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

    :goto_12
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    :goto_14
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_16
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x0

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

    :goto_18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1c
    if-le p1, p0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v0

    nop

    :goto_1f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v2, "uri"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_21
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "Input bitmap is %d bytes, which is larger than our maximum of %d bytes. Downsampling..."

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

    :goto_23
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_24
    const-string v1, "LensMetadata"

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

    nop

    :goto_25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    :goto_27
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_28
    int-to-float p0, p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_29
    iget-object v1, p0, Ltii;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v8, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2b
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string p0, "bitmap"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2f
    if-nez p0, :cond_2

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

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v8, p0, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_31
    iget p0, p1, Lnyc;->b:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_33
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_34
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_35
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v0, Landroid/os/Bundle;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_37
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

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

    :goto_3a
    const/4 v5, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3c
    float-to-double p0, p0

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

    :goto_3d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_35

    nop

    nop
.end method

.method public final b()Landroid/os/Bundle;
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

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
    const/4 v1, 0x5

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

    :goto_2
    const-string v2, "activity_launch_timestamp_nanos"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

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

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    const-string v2, "lens_initial_parameters"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    iget-object v1, p0, Ltii;->c:Ljava/lang/Long;

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

    nop

    nop

    :goto_8
    const-string p0, "lens_intent_type"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_b
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroid/os/Bundle;

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

    :goto_f
    const v0, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    :goto_13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ltis;->h()[B

    move-result-object v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Ltii;->d:Ltib;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Ltii;->e:Ljava/lang/Integer;

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

    :goto_17
    return-object v0

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    iget-object v3, p1, Ltii;->d:Ltib;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Ltii;->c:Ljava/lang/Long;

    nop

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

    :goto_7
    instance-of v1, p1, Ltii;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v3}, Ltkg;->equals(Ljava/lang/Object;)Z

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

    nop

    nop

    :goto_9
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
    iget-object v1, p1, Ltii;->a:Landroid/net/Uri;

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

    :goto_e
    if-eqz p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    return v2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_6
    :goto_13
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_15
    iget-object v3, p1, Ltii;->c:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    if-eq p1, p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p1, Ltii;->e:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_19
    goto/16 :goto_1

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Ltii;->e:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Ltii;->d:Ltib;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_9
    goto/32 :goto_3e

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

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_c

    nop

    nop

    :goto_21
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    :goto_24
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_26
    if-lez v0, :cond_b

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_23

    nop

    :goto_27
    goto :goto_2e

    nop

    :goto_28
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x1

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

    :goto_2c
    iget-object p1, p1, Ltii;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2d
    return v0

    nop

    :goto_2e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Ltii;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_24

    nop

    nop

    :goto_34
    instance-of v1, p1, Ltii;

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

    nop

    :goto_35
    iget-object v1, p1, Ltii;->d:Ltib;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_36
    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6

    nop

    nop

    :goto_38
    if-eqz v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v1, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_10
    :goto_3b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, p1, Ltii;->b:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast p1, Ltii;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p1, Ltii;->b:Landroid/graphics/Bitmap;

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

    :goto_40
    if-eqz p0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0x6

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_42
    const/4 v1, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v2, 0x0

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

    nop

    :goto_44
    goto :goto_3b

    nop

    nop

    :goto_45
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, p1, Ltii;->f:[B

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, p0, Ltii;->b:Landroid/graphics/Bitmap;

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

    nop

    :goto_49
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4b
    if-eqz v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_13
    goto/32 :goto_35

    nop

    nop

    :goto_4c
    iget-object v3, p1, Ltii;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4d
    iget-object v1, p1, Ltii;->c:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v2, v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    xor-int/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v3, v4

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v0, 0x5af15351

    nop

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

    :goto_7
    iget-object v2, p0, Ltii;->c:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    mul-int/2addr v0, v3

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

    :goto_d
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_39

    nop

    nop

    :goto_11
    mul-int/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3}, Ltkg;->j()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Ltii;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    xor-int p0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_19
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1a
    const p0, 0x22cd8cdb

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v3, 0xf4243

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

    :goto_1c
    mul-int/2addr v0, p0

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

    :goto_1d
    iget-object v0, p0, Ltii;->a:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1e
    return p0

    nop

    nop

    :goto_1f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    :goto_21
    move v3, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_23
    xor-int/2addr v0, v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_25
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v3, p0, Ltii;->d:Ltib;

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

    :goto_27
    goto/16 :goto_b

    nop

    nop

    :goto_28
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    goto :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_30

    nop

    nop

    :goto_2b
    move v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2c
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2d
    const v2, -0x199d4fcd

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

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

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

    :goto_2f
    add-int v0, v0, v1

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    nop

    :goto_31
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v3}, Ltkg;->j()I

    move-result v4

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_35
    if-eqz v2, :cond_5

    nop

    goto/32 :goto_28

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p0, :cond_6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_37
    const v0, -0x2aff6277

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3b
    mul-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3d
    mul-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3e
    iget v4, v3, Ltkg;->aT:I

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3f
    if-eqz v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_7
    goto/32 :goto_33

    nop

    nop

    :goto_40
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_44
    iput v4, v3, Ltkg;->aT:I

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

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

    nop

    :goto_47
    iget-object v2, p0, Ltii;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_48
    goto/16 :goto_14

    nop

    nop

    :goto_49
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Ltii;->a:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

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

    :goto_3
    const-string p0, ", null, null, null, null}"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltii;->e:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    const-string v0, ", null, "

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

    :goto_7
    const-string v1, ", null, null, null, null, "

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

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

    nop

    nop

    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    :goto_e
    iget-object v1, p0, Ltii;->c:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_11
    const-string v5, "{"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, ", "

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    iget-object v1, p0, Ltii;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    const v1, 0x1f

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_1d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

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

    :goto_1f
    const-string v1, ", null, null, "

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_28

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    :goto_23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Ltii;->d:Ltib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_12

    nop

    nop

    nop
.end method
