.class public final Ljdi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljdq;


# instance fields
.field private final a:Luad;

.field private final b:Ljdn;

.field private final c:Ljava/util/List;

.field private final d:Ljdk;


# direct methods
.method public constructor <init>(Luad;Ljdn;Ljdk;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljdi;->a:Luad;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljdi;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_8

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

    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Ljdi;->b:Ljdn;

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

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Ljdi;->d:Ljdk;

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljdr;)Ljdp;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljdp;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, p0}, Ljdp;-><init>(Ljdr;Ljava/util/List;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-object p0, p0, Ljdi;->b:Ljdn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Ljdn;->b:Ljava/util/Map;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "LapReportConfigs must include scope "

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/lang/NullPointerException;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop
.end method

.method public final b(Ljdp;)Lsui;
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    const-string p0, "DEFAULT"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljdi;->a:Luad;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lufv;->i(Luad;)Lufs;

    move-result-object v0

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

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v2, Luae;->a:Luae;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    :goto_9
    invoke-static {p0, v1, v0, v0}, Lufv;->f(ILubo;Ljava/lang/Object;Ltzy;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p1, "DEFAULT start is not supported"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_d
    new-instance v0, Lumr;

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

    nop

    :goto_e
    invoke-static {v0, v2}, Lufo;->b(Lufs;Luad;)Luad;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_18

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ltq;

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

    :goto_15
    const/16 v3, 0xe

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1, p1, p0, v2, v3}, Ltq;-><init>(Ljdp;Ljdi;Ltzy;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Lufv;->g(I)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p1}, Lumr;-><init>(Luad;)V

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    iget-object p0, v0, Lumr;->b:Lumq;

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
.end method

.method public final synthetic c(Ljdr;)Lsui;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljmo;->v(Ljdq;Ljdr;)Lsui;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljdo;Ltzy;)Ljava/lang/Object;
    .locals 19

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v3, Ljdh;

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

    :goto_1
    iget-object v2, v1, Ljdi;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2
    check-cast v3, Ljdh;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    move-object/from16 v2, p2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_7
    and-int v6, v4, v5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v0, p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    return-object v2

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v3, v1, v2}, Ljdh;-><init>(Ljdi;Ltzy;)V

    :goto_b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_13

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_2c

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_41

    nop

    nop

    :goto_11
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, v1, Ljdi;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltzy;->r()Luad;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lucu;->p(Luad;)Lugy;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v7

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    :goto_15
    iput v4, v3, Ljdh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_16
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v5, v3, Ljdh;->c:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_19
    iget-object v1, v3, Ljdh;->d:Ljdi;

    nop

    nop

    :try_start_2
    invoke-static {v2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x16

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

    :goto_1b
    move-object v3, v2

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

    :goto_1c
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v4, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_27

    nop

    nop

    :goto_20
    monitor-exit v4

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    iget-object v0, v3, Ljdh;->e:Ljdo;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_23
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v4, v3, Ljdh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_27
    move-object/from16 v1, p0

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

    :goto_28
    invoke-static {v2}, Lrgw;->ak(Ljava/lang/Object;)V

    :try_start_3
    iget-object v2, v1, Ljdi;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, v1, Ljdi;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltzy;->r()Luad;

    move-result-object v7

    nop

    nop

    nop

    invoke-static {v7}, Lucu;->p(Luad;)Lugy;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    iget-wide v7, v0, Ljdo;->a:J

    nop

    nop

    iput-object v1, v3, Ljdh;->d:Ljdi;

    nop

    nop

    nop

    iput-object v0, v3, Ljdh;->e:Ljdo;

    nop

    nop

    nop

    iput v6, v3, Ljdh;->c:I

    nop

    nop

    nop

    sget-wide v9, Luek;->a:J

    nop

    nop

    nop

    nop

    const-wide/16 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v2, v7, v9

    nop

    nop

    nop

    if-lez v2, :cond_d

    nop

    sget-object v2, Luem;->a:Luem;

    nop

    nop

    nop

    const-wide/32 v11, 0xf423f

    nop

    nop

    nop

    invoke-static {v11, v12, v2}, Luch;->i(JLuem;)J

    move-result-wide v11

    nop

    nop

    nop

    invoke-static {v7, v8}, Luek;->g(J)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    invoke-static {v11, v12}, Luek;->d(J)Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    xor-long/2addr v11, v7

    nop

    nop

    nop

    cmp-long v2, v11, v9

    nop

    nop

    nop

    nop

    if-ltz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2a

    nop

    nop

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    const-string v2, "Summing infinite durations of different signs yields an undefined result."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :cond_4
    invoke-static {v11, v12}, Luek;->g(J)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    move-wide v7, v11

    nop

    nop

    nop

    nop

    goto/16 :goto_2a

    nop

    nop

    nop

    :cond_5
    long-to-int v2, v7

    nop

    nop

    nop

    long-to-int v5, v11

    nop

    nop

    nop

    and-int/2addr v2, v6

    nop

    nop

    nop

    and-int/2addr v5, v6

    nop

    nop

    nop

    nop

    if-ne v2, v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Luek;->b(J)J

    move-result-wide v9

    nop

    nop

    invoke-static {v11, v12}, Luek;->b(J)J

    move-result-wide v11

    nop

    nop

    add-long v13, v9, v11

    nop

    invoke-static {v7, v8}, Luek;->f(J)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    nop

    nop

    new-instance v2, Ludn;

    nop

    nop

    nop

    nop

    const-wide v7, -0x3ffffffffffa14bfL    # -2.0000000001722644

    nop

    nop

    nop

    nop

    nop

    const-wide v9, 0x3ffffffffffa14bfL    # 1.9999999999138678

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v7, v8, v9, v10}, Ludn;-><init>(JJ)V

    invoke-virtual {v2, v13, v14}, Ludn;->b(J)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    sget v2, Luel;->a:I

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v13, v13

    nop

    nop

    goto :goto_29

    nop

    :cond_6
    invoke-static {v13, v14}, Luch;->g(J)J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Luch;->e(J)J

    move-result-wide v13

    nop

    nop

    :goto_29
    move-wide v7, v13

    nop

    nop

    nop

    nop

    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    :cond_7
    new-instance v2, Ludn;

    nop

    nop

    nop

    nop

    nop

    const-wide v7, -0x431bde82d7aL

    nop

    nop

    nop

    const-wide v9, 0x431bde82d7aL

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v7, v8, v9, v10}, Ludn;-><init>(JJ)V

    invoke-virtual {v2, v13, v14}, Ludn;->b(J)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    invoke-static {v13, v14}, Luch;->f(J)J

    move-result-wide v7

    nop

    nop

    nop

    sget v2, Luel;->a:I

    nop

    nop

    add-long/2addr v7, v7

    nop

    goto :goto_2a

    nop

    nop

    nop

    :cond_8
    const-wide v15, -0x3fffffffffffffffL    # -2.0000000000000004

    nop

    const-wide v17, 0x3fffffffffffffffL    # 1.9999999999999998

    nop

    nop

    nop

    nop

    invoke-static/range {v13 .. v18}, Lucd;->m(JJJ)J

    move-result-wide v7

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Luch;->e(J)J

    move-result-wide v7

    nop

    goto :goto_2a

    nop

    :cond_9
    invoke-static {v7, v8}, Luek;->e(J)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_a

    nop

    nop

    invoke-static {v7, v8}, Luek;->b(J)J

    move-result-wide v7

    nop

    nop

    invoke-static {v11, v12}, Luek;->b(J)J

    move-result-wide v9

    nop

    nop

    nop

    invoke-static {v7, v8, v9, v10}, Luek;->i(JJ)J

    move-result-wide v7

    nop

    nop

    nop

    goto :goto_2a

    nop

    :cond_a
    invoke-static {v11, v12}, Luek;->b(J)J

    move-result-wide v9

    nop

    invoke-static {v7, v8}, Luek;->b(J)J

    move-result-wide v7

    nop

    nop

    invoke-static {v9, v10, v7, v8}, Luek;->i(JJ)J

    move-result-wide v7

    nop

    nop

    nop

    :cond_b
    :goto_2a
    invoke-static {v7, v8}, Luek;->e(J)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Luek;->d(J)Z

    move-result v2

    nop

    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Luek;->b(J)J

    move-result-wide v7

    nop

    nop

    nop

    goto :goto_2b

    nop

    nop

    :cond_c
    sget-object v2, Luem;->c:Luem;

    nop

    invoke-static {v7, v8, v2}, Luek;->c(JLuem;)J

    move-result-wide v7

    nop

    :goto_2b
    move-wide v9, v7

    nop

    nop

    nop

    nop

    nop

    :cond_d
    invoke-static {v9, v10, v3}, Lufv;->d(JLtzy;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    sget-object v5, Luag;->a:Luag;

    nop

    nop

    nop

    if-eq v2, v5, :cond_e

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ltyg;->a:Ltyg;

    nop

    nop

    :cond_e
    if-ne v2, v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    return-object v4

    nop

    nop

    nop

    :cond_f
    :goto_2c
    iget-object v2, v1, Ljdi;->d:Ljdk;

    nop

    nop

    iget-wide v4, v0, Ljdo;->a:J

    nop

    nop

    nop

    nop

    iget-object v7, v2, Ljdk;->a:Ljava/util/Map;

    nop

    nop

    nop

    monitor-enter v7

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v2, v2, Ljdk;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-static {v2}, Lrkm;->Y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v7

    nop

    nop

    new-instance v7, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v8

    nop

    nop

    invoke-static {v8}, Lrkm;->R(I)I

    move-result v8

    nop

    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_10

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    nop

    check-cast v8, Lofu;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Luem;->a:Luem;

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v10}, Luek;->c(JLuem;)J

    move-result-wide v10

    nop

    nop

    invoke-virtual {v8, v10, v11}, Lofu;->h(J)Lsvr;

    move-result-object v8

    nop

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    nop

    nop

    nop

    nop

    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    nop

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_1f

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/util/Map$Entry;

    nop

    iget-wide v7, v0, Ljdo;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    check-cast v9, Ljds;

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lsvr;

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lsne;->a:Lsne;

    nop

    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    nop

    sget-object v11, Luem;->c:Luem;

    nop

    nop

    nop

    nop

    invoke-static {v7, v8, v11}, Luek;->a(JLuem;)I

    move-result v7

    nop

    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_11

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_11
    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lsne;

    nop

    nop

    nop

    nop

    nop

    iget v11, v8, Lsne;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v11, v11, 0x2

    nop

    nop

    nop

    nop

    iput v11, v8, Lsne;->b:I

    nop

    nop

    iput v7, v8, Lsne;->d:I

    nop

    nop

    nop

    nop

    iget-wide v7, v5, Lsvr;->a:J

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Luem;->c:Luem;

    nop

    invoke-static {v7, v8, v11}, Luek;->a(JLuem;)I

    move-result v7

    nop

    nop

    nop

    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    if-nez v8, :cond_12

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_12
    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v11, v8

    nop

    nop

    nop

    check-cast v11, Lsne;

    nop

    iget v12, v11, Lsne;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v12, v12, 0x4

    nop

    nop

    iput v12, v11, Lsne;->b:I

    nop

    iput v7, v11, Lsne;->e:I

    nop

    nop

    nop

    iget v7, v9, Ljds;->c:I

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    if-nez v8, :cond_13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_13
    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    move-object v9, v8

    nop

    nop

    check-cast v9, Lsne;

    nop

    nop

    nop

    nop

    add-int/lit8 v11, v7, -0x1

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    if-eqz v7, :cond_1e

    nop

    iput v11, v9, Lsne;->c:I

    nop

    nop

    nop

    iget v7, v9, Lsne;->b:I

    nop

    or-int/2addr v7, v6

    nop

    nop

    nop

    iput v7, v9, Lsne;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v5, Lsvr;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v7, [I

    nop

    array-length v7, v7

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    if-nez v8, :cond_14

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_14
    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    check-cast v8, Lsne;

    nop

    iget v9, v8, Lsne;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v9, v9, 0x8

    nop

    nop

    nop

    nop

    iput v9, v8, Lsne;->b:I

    nop

    nop

    iput v7, v8, Lsne;->f:I

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lsvr;->b:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v7, v5

    nop

    nop

    nop

    check-cast v7, [I

    nop

    nop

    nop

    nop

    nop

    array-length v7, v7

    nop

    nop

    if-nez v7, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_15
    move-object v8, v5

    nop

    check-cast v8, [I

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lrkm;->aS([I)V

    move-object v8, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v8, [I

    nop

    nop

    const/16 v9, 0x32

    nop

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljmo;->w([II)I

    move-result v8

    nop

    nop

    nop

    nop

    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    if-nez v11, :cond_16

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_16
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Lsne;

    nop

    nop

    nop

    iget v13, v11, Lsne;->b:I

    nop

    or-int/lit8 v13, v13, 0x20

    nop

    nop

    nop

    iput v13, v11, Lsne;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v8, v11, Lsne;->h:I

    nop

    nop

    nop

    move-object v8, v5

    nop

    check-cast v8, [I

    nop

    nop

    const/16 v11, 0x4b

    nop

    nop

    nop

    nop

    invoke-static {v8, v11}, Ljmo;->w([II)I

    move-result v8

    nop

    nop

    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    nop

    if-nez v11, :cond_17

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_17
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Lsne;

    nop

    iget v13, v11, Lsne;->b:I

    nop

    nop

    nop

    or-int/lit8 v13, v13, 0x40

    nop

    nop

    nop

    nop

    iput v13, v11, Lsne;->b:I

    nop

    nop

    nop

    iput v8, v11, Lsne;->i:I

    nop

    nop

    nop

    nop

    move-object v8, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v8, [I

    nop

    nop

    nop

    const/16 v11, 0x5f

    nop

    invoke-static {v8, v11}, Ljmo;->w([II)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    if-nez v11, :cond_18

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_18
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v11, Lsne;

    nop

    nop

    nop

    iget v13, v11, Lsne;->b:I

    nop

    nop

    nop

    or-int/lit16 v13, v13, 0x80

    nop

    nop

    nop

    nop

    iput v13, v11, Lsne;->b:I

    nop

    nop

    nop

    iput v8, v11, Lsne;->j:I

    nop

    move-object v8, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v8, [I

    nop

    nop

    nop

    nop

    const/16 v11, 0x64

    nop

    invoke-static {v8, v11}, Ljmo;->w([II)I

    move-result v8

    nop

    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    nop

    if-nez v11, :cond_19

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_19
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v11, Lsne;

    nop

    nop

    nop

    nop

    nop

    iget v13, v11, Lsne;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v13, v13, 0x100

    nop

    nop

    nop

    iput v13, v11, Lsne;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v8, v11, Lsne;->k:I

    nop

    nop

    nop

    nop

    nop

    move-object v8, v5

    nop

    nop

    nop

    nop

    check-cast v8, [I

    nop

    nop

    invoke-static {v8, v9}, Ljmo;->w([II)I

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_1a

    nop

    goto :goto_30

    nop

    nop

    nop

    nop

    :cond_1a
    const/4 v9, 0x0

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    move-object v12, v11

    nop

    nop

    nop

    nop

    nop

    move v11, v9

    nop

    nop

    nop

    :goto_2f
    if-ge v11, v7, :cond_1b

    nop

    nop

    nop

    nop

    nop

    move-object v13, v5

    nop

    nop

    nop

    check-cast v13, [I

    nop

    nop

    nop

    aget v13, v13, v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    nop

    nop

    nop

    int-to-float v14, v8

    nop

    nop

    nop

    int-to-float v13, v13

    nop

    nop

    nop

    nop

    div-float/2addr v13, v14

    nop

    const/high16 v14, -0x40800000    # -1.0f

    nop

    nop

    add-float/2addr v13, v14

    nop

    nop

    nop

    nop

    nop

    float-to-double v13, v13

    nop

    nop

    nop

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    nop

    nop

    double-to-float v13, v13

    nop

    nop

    nop

    nop

    nop

    float-to-int v13, v13

    nop

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    nop

    nop

    add-int/2addr v12, v13

    nop

    nop

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    nop

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto :goto_2f

    nop

    nop

    nop

    :cond_1b
    :goto_30
    if-eqz v12, :cond_1d

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v5

    nop

    nop

    iget-object v7, v10, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    if-nez v7, :cond_1c

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_1c
    iget-object v7, v10, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v7, Lsne;

    nop

    nop

    nop

    nop

    nop

    iget v8, v7, Lsne;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v8, v8, 0x10

    nop

    nop

    iput v8, v7, Lsne;->b:I

    nop

    iput v5, v7, Lsne;->g:I

    nop

    nop

    :cond_1d
    :goto_31
    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lsne;

    nop

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :cond_1e
    throw v12

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_1f
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_32
    throw v0

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    monitor-enter v2

    nop

    nop

    nop

    :try_start_8
    iget-object v1, v1, Ljdi;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v3}, Ltzy;->r()Luad;

    move-result-object v3

    nop

    nop

    invoke-static {v3}, Lucu;->p(Luad;)Lugy;

    move-result-object v3

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_20

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_1e

    nop

    :goto_35
    throw v0

    nop

    nop

    :goto_36
    goto/32 :goto_28

    nop

    nop

    :goto_37
    if-eq v5, v6, :cond_21

    nop

    goto/32 :goto_d

    nop

    :cond_21
    goto/32 :goto_21

    nop

    nop

    :goto_38
    instance-of v3, v2, Ljdh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, v3, Ljdh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3a
    const/high16 v5, -0x80000000

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3b
    iget-object v4, v1, Ljdi;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    monitor-exit v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3d
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_40
    monitor-exit v4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_41
    sub-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_4
    invoke-interface {v0, v1}, Lugy;->p(Ljava/util/concurrent/CancellationException;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    monitor-exit v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljdi;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object p0, p0, Ljdi;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Ljdi;->c:Ljava/util/List;

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Lugy;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Ljava/util/concurrent/CancellationException;

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

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    iget-object v0, p0, Ljdi;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

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

    :goto_1a
    monitor-exit v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v2, "LapReporter.cancel()"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    monitor-exit v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x7

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Ljdi;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method
