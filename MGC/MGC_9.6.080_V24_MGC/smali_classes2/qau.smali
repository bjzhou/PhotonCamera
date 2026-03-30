.class public final Lqau;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lria;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lqau;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lqau;->b:Ljava/lang/Object;

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

    :goto_7
    new-instance v0, Lria;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/media/MediaFormat;Lqle;Lqkz;Landroid/os/Handler;ZLandroid/view/Surface;Z)V
    .locals 8

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v5, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "Not allowed to update the frame processor after start."

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p5, Lqby;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-direct {p1, p2}, Lqlk;-><init>(Lqle;)V

    goto/32 :goto_28

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    :goto_b
    const-string p1, "Not allowed to update the listener after start."

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
    if-nez p5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_d
    iput-object p6, p0, Lqau;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p6, :cond_1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p1, Lqlk;->b:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_11
    iget-object p1, p6, Lqkp;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_13
    move v7, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_14
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_16
    iput-object p1, p6, Lqkp;->n:Lqlj;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    goto :goto_21

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p6, Lqkp;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    invoke-direct {p5, v0}, Lqkq;-><init>(I)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_14

    nop

    :goto_1c
    iput-object p3, p6, Lqkp;->o:Lqkz;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_22
    const-string p5, "mime"

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_21

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_26
    sget-boolean p5, Lqhh;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_27
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_28
    move-object p2, p6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object p1, p0, Lqau;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2b
    new-instance p5, Lqkq;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2d
    throw p0

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x4

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, p5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    throw p0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance p6, Lqkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p2, Lqkp;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz p2, :cond_3

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

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_36
    new-instance p1, Lqlk;

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

    :goto_37
    invoke-static {p5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

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

    :goto_38
    invoke-direct {p5, p6, v1}, Lqby;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x11

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v4, p5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3c
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3d
    invoke-direct/range {v1 .. v7}, Lqkp;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Lrsk;ZLandroid/os/Handler;Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v6, p4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

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

    :goto_40
    move-object p1, p6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast p1, Lqkp;

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

    :goto_42
    move-object v1, p6

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

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

    :goto_1
    iput-object p1, p0, Lqau;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqau;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    sget-object p1, Lrsa;->a:Lrsa;

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
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lqau;->a:Ljava/lang/Object;

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    check-cast v1, [Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqau;->b:Ljava/lang/Object;

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

    :goto_5
    new-array v0, p1, [Z

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

    :goto_6
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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

    :goto_9
    if-lt v0, p1, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 p1, 0x100

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput-boolean v2, v1, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lqau;->a:Ljava/lang/Object;

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

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    iget-object v2, p0, Lqau;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x14

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_2

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqau;->b:Ljava/lang/Object;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqau;->a:Ljava/lang/Object;

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
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpwh;Ljava/util/Random;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p2, p0, Lqau;->a:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqau;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lrqu;Lrqu;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lrqu;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lrqu;->e(Lrqu;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lrqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    invoke-virtual {v1, p0}, Lrqu;->e(Lrqu;)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Lrqu;->c()Lrqu;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    nop

    :goto_a
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    invoke-direct {v1}, Lrqu;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_c
    iput-object v1, p0, Lqau;->a:Ljava/lang/Object;

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

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v1, Lrqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lrqu;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lqau;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Lrqu;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_13
    const v1, 0x1a

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

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    move-object p0, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    move-object p1, v1

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
.end method

.method public static final b(JJ)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    rem-long/2addr p0, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    cmp-long p0, p0, p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(JLrss;)Lsui;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    iput-boolean v2, p1, Lsre;->c:Z

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    :goto_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, p1, p2}, Lqau;->b(JJ)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p3, Lqbp;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p3, p1, p2, v2}, Lqbp;-><init>(JI)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_32

    nop

    :goto_f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_10
    cmp-long v0, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    invoke-interface {p0}, Lqbr;->c()Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    :goto_15
    check-cast p0, Ljava/util/Random;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    if-ltz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    :goto_18
    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_19
    or-int/lit8 p2, p2, 0x1

    nop

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

    :goto_1a
    goto/32 :goto_5

    nop

    :goto_1b
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

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

    :goto_20
    check-cast p0, Lsre;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_45

    nop

    :goto_22
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_23
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

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

    :goto_25
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    iget p2, p1, Lsre;->b:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v1}, Lpwh;->B()Z

    move-result v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_29
    invoke-static {p0}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2c
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object p0, Lsre;->a:Lsre;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2e
    iput p2, p1, Lsre;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p3, p1}, Lqdd;->f(Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

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

    :goto_30
    iget-object p0, p0, Lqau;->a:Ljava/lang/Object;

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

    :goto_31
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_35
    const-string p0, "Bad sample interval (negative number): %d"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_5

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_39
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

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

    :goto_3c
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3e
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p0, Lqau;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_42
    check-cast p1, Lsre;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return-object p0

    nop

    :goto_45
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop
.end method

.method public final c(Landroid/animation/ValueAnimator;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lqqy;

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

    :goto_1
    goto/32 :goto_c

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_8

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    check-cast p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lqau;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Lqqy;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const v0, 0xf

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

    :goto_f
    iget-object v1, p0, Lqau;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop
.end method
