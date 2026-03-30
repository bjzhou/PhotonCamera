.class public final Liyl;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lhoh;Llhq;)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const p2, 0x7fffffff

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

    :goto_3
    invoke-virtual {p0, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_4
    invoke-interface {p2}, Llhq;->b()Loyd;

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    sget-object p1, Lmmx;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lhnt;->y:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p0, p2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lhmu;->C:Lhmo;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    sget-object p2, Lmmw;->i:Lmmw;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, p0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lmmw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    sget-object p0, Lhmu;->B:Lhmo;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public static a(Ltxm;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {}, Liyl;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public static declared-synchronized b()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    :try_start_0
    const-class v1, Liyl;

    nop

    nop

    const-string v2, "gcastartup"

    nop

    nop

    nop

    invoke-static {v1, v2}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const v1, 0x1e

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
    const-class v0, Liyl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    monitor-exit v0

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

    :goto_b
    throw v1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public static final c(IILprv;)Ljava/nio/ByteBuffer;
    .locals 12

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    move-object v3, v0

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

    :goto_8
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

    :goto_9
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    sget-object v1, Lqlp;->a:Lqlo;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    move v5, p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-interface/range {v1 .. v11}, Lqlo;->copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-interface {p2}, Lprv;->getRowStride()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    mul-int v0, p0, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    invoke-interface {p2}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

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

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_12
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p2}, Lprv;->getPixelStride()I

    move-result v8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x13

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

    :goto_15
    move v4, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    move v11, p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static d(I)I
    .locals 3

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-ne p0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_15

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

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    if-ne p0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_4
    const/4 v1, 0x1

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

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x4

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
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x7

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

    nop

    :goto_c
    if-nez p0, :cond_3

    nop

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

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p0, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p0, v0, :cond_5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    :goto_1b
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_6
    goto/32 :goto_22

    nop

    :goto_1c
    const/4 v0, 0x5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1d

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

    :goto_20
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1d

    nop

    nop

    :goto_22
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final synthetic e(Ltkb;)Liyx;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    check-cast p0, Liyx;

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

.method public static final f(ILtkb;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Liyx;->a:Liyx;

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

    :goto_1
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget-object v0, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput p0, p1, Liyx;->c:I

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Liyx;

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
.end method

.method public static final g(ILtkb;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p0, p0, -0x2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    sget-object v0, Liyx;->a:Liyx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    check-cast p1, Liyx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v0, p1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_8
    goto/32 :goto_1

    nop

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

    :goto_a
    iput p0, p1, Liyx;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static h(I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p0, p0, -0x1

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

.method public static i(ILandroid/content/Context;Z)Ljava/lang/String;
    .locals 1

    goto/32 :goto_15

    nop

    nop

    :goto_0
    const/4 p2, 0x4

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

    :goto_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    if-ne p0, p2, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-ne p0, p2, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const p0, 0x7f140290

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto :goto_14

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    :goto_7
    if-ne p0, p2, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const p0, 0x7f140293

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto :goto_14

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    goto :goto_14

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    if-ne p0, v0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const p0, 0x7f140292

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    const p0, 0x7f140291

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    :goto_15
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    goto :goto_14

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    const p0, 0x7f14028f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public static j(I)I
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    return v2

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    :goto_12
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    :goto_16
    const/4 v0, 0x1

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

    :goto_17
    if-ne p0, v1, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    :goto_18
    if-ne p0, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    :goto_19
    if-ne p0, v0, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_1a
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne p0, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    :goto_1e
    return p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_13

    nop

    nop

    :goto_20
    const v1, 0x1f

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
.end method

.method public static k(Lpnx;Likv;Lcom/google/googlex/gcam/Gcam;)F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p0}, Lcom/google/googlex/gcam/Gcam;->c(I)Lcom/google/googlex/gcam/Tuning;

    move-result-object p0

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

    :goto_1
    iget-wide p1, p0, Lcom/google/googlex/gcam/Tuning;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-interface {p1, p0}, Likv;->a(Lpnx;)I

    move-result p0

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
    invoke-static {p1, p2, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_sensitivity_get(JLcom/google/googlex/gcam/Tuning;)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop
.end method

.method public static l(Lpnu;)Ljava/lang/Float;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    div-float/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Ltbt;->u(Lpnu;)[F

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    mul-float/2addr p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    check-cast p0, [F

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v1}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_a
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    :goto_b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    aget p0, p0, v1

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

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-gtz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_12
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    if-gtz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    if-nez p0, :cond_3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    array-length v1, v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/high16 p0, -0x40800000    # -1.0f

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

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    array-length v1, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static m(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_14

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x7

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

    :goto_2
    const/16 p0, 0xb

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

    :goto_3
    return p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 p0, 0x10

    nop

    goto/32 :goto_12

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

    :pswitch_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p0, 0xc

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

    :goto_7
    const/16 p0, 0x9

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

    :goto_8
    const/16 p0, 0xa

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

    :goto_9
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_7

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 p0, 0xd

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

    :goto_d
    const/16 p0, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_9
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_b
        :pswitch_e
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :goto_11
    return p0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_15

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_d

    nop

    nop

    :goto_13
    const/4 p0, 0x6

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
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

    :goto_15
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return p0

    nop

    nop

    :pswitch_b
    goto/32 :goto_6

    nop

    nop

    :goto_1a
    const/16 p0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    const/4 p0, 0x4

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

    :goto_1c
    return p0

    nop

    nop

    :pswitch_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_e

    nop

    nop

    :goto_1e
    return p0

    nop

    nop

    :pswitch_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 p0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method

.method public static n(Landroid/graphics/Rect;)Liqo;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    check-cast v2, Liqo;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5
    iput v1, v2, Liqo;->d:I

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

    :goto_6
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_8
    check-cast v2, Liqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    :goto_e
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1e

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

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_2a

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    check-cast v2, Liqo;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    sget-object v0, Liqo;->a:Liqo;

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

    :goto_19
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    iput v1, v2, Liqo;->b:I

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

    :goto_1d
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Liqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_20
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    iput v1, v2, Liqo;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    iput p0, v1, Liqo;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_28
    check-cast v1, Liqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2b
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2c
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2d
    iget v1, p0, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    :goto_30
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

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
.end method

.method public static synthetic o(I)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string p0, "ENABLED"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p0, "DISABLED"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const-string p0, "THROTTLED"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    if-ne p0, v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_b
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public static p()[I
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

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

    :goto_9
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

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
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static q(Liou;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Liou;->e()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

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
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-interface {p0}, Liou;->d()Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :goto_c
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Liou;->b()Z

    move-result v0

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

    :goto_e
    invoke-interface {p0}, Liou;->c()Z

    move-result v0

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
