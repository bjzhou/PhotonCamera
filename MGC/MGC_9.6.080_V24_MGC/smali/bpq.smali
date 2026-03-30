.class final Lbpq;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lbpv;


# direct methods
.method public constructor <init>(Lbpv;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

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

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbpq;->a:Lbpv;

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
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    goto/32 :goto_8

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

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    check-cast v0, Ljava/util/Set;

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

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    throw v0

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x11

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
    check-cast v1, Lbxt;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    move-object/from16 v1, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v0, p1

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

    :goto_e
    sget-object v1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_16

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

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v1, Lbpq;->a:Lbpv;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v1, p0

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

    :goto_13
    monitor-exit v2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0, v1}, Ltzy;->t(Ljava/lang/Object;)V

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    monitor-enter v2

    nop

    :try_start_0
    iget-object v3, v1, Lbpv;->o:Lulh;

    nop

    invoke-virtual {v3}, Lulh;->b()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lbpi;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lbpi;->e:Lbpi;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lbpi;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    nop

    nop

    nop

    if-ltz v3, :cond_2

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lbpv;->p:Lyj;

    nop

    instance-of v4, v0, Lbtj;

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    if-eqz v4, :cond_7

    nop

    nop

    nop

    check-cast v0, Lbtj;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lbtj;->a:Lyj;

    nop

    nop

    nop

    iget-object v4, v0, Lyj;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lyj;->a:[J

    nop

    nop

    nop

    nop

    nop

    array-length v6, v0

    nop

    nop

    add-int/lit8 v6, v6, -0x2

    nop

    if-ltz v6, :cond_a

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    move v8, v7

    nop

    :goto_18
    aget-wide v9, v0, v8

    nop

    not-long v11, v9

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x7

    nop

    nop

    nop

    shl-long/2addr v11, v13

    nop

    and-long/2addr v11, v9

    nop

    nop

    nop

    nop

    nop

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    nop

    nop

    nop

    and-long/2addr v11, v13

    nop

    nop

    nop

    nop

    cmp-long v11, v11, v13

    nop

    nop

    if-eqz v11, :cond_6

    nop

    sub-int v11, v8, v6

    nop

    move v12, v7

    nop

    :goto_19
    not-int v13, v11

    nop

    nop

    nop

    nop

    ushr-int/lit8 v13, v13, 0x1f

    nop

    nop

    nop

    const/16 v14, 0x8

    nop

    nop

    nop

    nop

    rsub-int/lit8 v13, v13, 0x8

    nop

    if-ge v12, v13, :cond_5

    nop

    nop

    nop

    const-wide/16 v15, 0xff

    nop

    nop

    nop

    nop

    and-long/2addr v15, v9

    nop

    const-wide/16 v17, 0x80

    nop

    nop

    nop

    nop

    nop

    cmp-long v13, v15, v17

    nop

    nop

    nop

    nop

    if-gez v13, :cond_4

    nop

    nop

    shl-int/lit8 v13, v8, 0x3

    nop

    nop

    nop

    nop

    add-int/2addr v13, v12

    nop

    nop

    aget-object v13, v4, v13

    nop

    nop

    instance-of v15, v13, Lbyx;

    nop

    if-eqz v15, :cond_3

    nop

    nop

    nop

    move-object v15, v13

    nop

    nop

    nop

    nop

    check-cast v15, Lbyx;

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v5}, Lbyx;->l(I)Z

    move-result v15

    nop

    nop

    nop

    if-eqz v15, :cond_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v3, v13}, Lyj;->j(Ljava/lang/Object;)Z

    :cond_4
    shr-long/2addr v9, v14

    nop

    nop

    nop

    nop

    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    :cond_5
    if-ne v13, v14, :cond_a

    nop

    nop

    nop

    nop

    :cond_6
    if-eq v8, v6, :cond_a

    nop

    nop

    nop

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_a

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    instance-of v6, v4, Lbyx;

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_9

    nop

    nop

    nop

    move-object v6, v4

    nop

    nop

    nop

    nop

    check-cast v6, Lbyx;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v5}, Lbyx;->l(I)Z

    move-result v6

    nop

    if-eqz v6, :cond_8

    nop

    nop

    nop

    :cond_9
    invoke-virtual {v3, v4}, Lyj;->j(Ljava/lang/Object;)Z

    goto :goto_1a

    nop

    nop

    nop

    nop

    :cond_a
    invoke-virtual {v1}, Lbpv;->t()Luez;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    monitor-exit v2

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1f
    iget-object v2, v1, Lbpv;->c:Ljava/lang/Object;

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
.end method
