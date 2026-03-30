.class public final Lkaw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "kaw"

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

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_3
    sput-object v0, Lkaw;->a:Lsdb;

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

.method public static a(Lpck;IFLjava/lang/String;ZZ)Landroid/media/MediaFormat;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3
    invoke-static {p3, v0, p0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

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

    :goto_4
    const-string p2, "video/av01"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const-string p5, "i-frame-interval"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p5, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "color-standard"

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_a
    const-string v0, "profile"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    const-string p2, "video/hevc"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    const v0, 0x12

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_e
    move p5, p1

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-virtual {p0, p5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_11
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    const/4 v1, 0x3

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

    :goto_14
    const-string v0, "bitrate"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ne p1, p5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_18
    goto :goto_11

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

    :goto_1a
    invoke-virtual {p0, p5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_37

    nop

    nop

    :goto_1c
    const-string p1, "color-format"

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    :goto_20
    const-string v0, "color-range"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_24

    nop

    nop

    :goto_23
    const/16 v0, 0x1e

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 p1, 0x2000

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p1, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    :goto_27
    const-string p5, "level"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1f

    nop

    nop

    :goto_2a
    iget v0, p0, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_17

    nop

    nop

    :goto_2d
    const-string p2, "oo.muxer.drop_initial_non_keyframes"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2e
    const/high16 p1, 0x10000

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2f
    if-nez p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_31
    iget p0, p0, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_32
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_25

    nop

    nop

    :goto_33
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

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

    :goto_35
    const-string v0, "color-transfer"

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

    :goto_36
    const p1, 0x8000

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_37
    const-string p1, "frame-rate"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_38
    const v1, 0xc

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_f

    nop

    nop

    :goto_3c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, v0, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop
.end method

.method public static b(ZZZ)Lpck;
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    sget-object p0, Libw;->e:Lpck;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    sget-object p0, Libw;->f:Lpck;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    sget-object p0, Libw;->g:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    sget-object p0, Libw;->d:Lpck;

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

    :goto_b
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_c
    goto :goto_f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Libw;->c:Lpck;

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Libw;->h:Lpck;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p2, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    goto :goto_f

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    :goto_15
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(Lhoh;ZZ)I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p1

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    const-string p2, "%s is not set, return default value %d."

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const p0, 0x487ab00

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    const/16 p1, 0xb13

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    const p0, 0x243d580

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    :goto_12
    if-nez p2, :cond_1

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lkaw;->a:Lsdb;

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

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

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

    :goto_15
    iget-object p1, p1, Lhmn;->a:Ljava/lang/String;

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

    :goto_16
    const v0, 0x121eac0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    sget-object p1, Lhna;->e:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0, p2, p1, v0}, Lscz;->C(Ljava/lang/String;Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p1, Lhna;->e:Lhmo;

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
.end method
