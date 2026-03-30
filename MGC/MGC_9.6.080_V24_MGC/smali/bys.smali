.class final Lbys;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Lbyt;


# direct methods
.method public constructor <init>(Lbyt;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbys;->a:Lbyt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 23

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_12

    nop

    nop

    nop

    :cond_0
    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-object v2, v1, Lbyt;->f:Ljava/lang/Object;

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    :goto_9
    const v1, 0x15

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    :try_start_0
    iput-boolean v3, v1, Lbyt;->c:Z

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    iput-boolean v3, v1, Lbyt;->c:Z

    nop

    throw v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Lbys;->a:Lbyt;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_4

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Ltyg;->a:Ltyg;

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

    :goto_10
    if-ge v6, v5, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v3, v1, Lbyt;->c:Z

    nop

    if-nez v3, :cond_1

    nop

    const/4 v3, 0x1

    nop

    iput-boolean v3, v1, Lbyt;->c:Z

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, v1, Lbyt;->e:Lbtg;

    nop

    nop

    nop

    nop

    nop

    iget v5, v4, Lbtg;->b:I

    nop

    nop

    if-lez v5, :cond_0

    nop

    nop

    nop

    iget-object v4, v4, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    :goto_12
    aget-object v7, v4, v6

    nop

    nop

    check-cast v7, Lbyp;

    nop

    nop

    iget-object v8, v7, Lbyp;->k:Lyj;

    nop

    nop

    nop

    iget-object v7, v7, Lbyp;->a:Lubk;

    nop

    nop

    nop

    iget-object v9, v8, Lyj;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v10, v8, Lyj;->a:[J

    nop

    nop

    array-length v11, v10

    nop

    nop

    nop

    nop

    add-int/lit8 v11, v11, -0x2

    nop

    nop

    nop

    nop

    if-ltz v11, :cond_6

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_13
    aget-wide v13, v10, v12

    nop

    nop

    nop

    nop

    move-object/from16 v16, v4

    nop

    nop

    not-long v3, v13

    nop

    nop

    const/16 v17, 0x7

    nop

    nop

    nop

    nop

    nop

    shl-long v3, v3, v17

    nop

    nop

    nop

    nop

    nop

    and-long/2addr v3, v13

    nop

    nop

    nop

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    nop

    nop

    nop

    and-long v3, v3, v17

    nop

    nop

    cmp-long v3, v3, v17

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_5

    nop

    nop

    sub-int v3, v12, v11

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    :goto_14
    not-int v15, v3

    nop

    nop

    nop

    nop

    ushr-int/lit8 v15, v15, 0x1f

    nop

    nop

    nop

    nop

    move/from16 v18, v3

    nop

    nop

    nop

    const/16 v3, 0x8

    nop

    nop

    nop

    rsub-int/lit8 v15, v15, 0x8

    nop

    nop

    nop

    if-ge v4, v15, :cond_4

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v19, 0xff

    nop

    nop

    nop

    nop

    nop

    and-long v19, v13, v19

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v21, 0x80

    nop

    nop

    nop

    cmp-long v15, v19, v21

    nop

    nop

    nop

    nop

    if-gez v15, :cond_3

    nop

    nop

    shl-int/lit8 v15, v12, 0x3

    nop

    nop

    nop

    nop

    add-int/2addr v15, v4

    nop

    nop

    nop

    nop

    aget-object v15, v9, v15

    nop

    invoke-interface {v7, v15}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    shr-long/2addr v13, v3

    nop

    nop

    nop

    nop

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    move/from16 v3, v18

    nop

    nop

    goto :goto_14

    nop

    nop

    :cond_4
    if-ne v15, v3, :cond_7

    nop

    nop

    :cond_5
    if-eq v12, v11, :cond_7

    nop

    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    move-object/from16 v4, v16

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :cond_6
    move-object/from16 v16, v4

    nop

    nop

    nop

    nop

    :cond_7
    invoke-virtual {v8}, Lyj;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, v0, Lbys;->a:Lbyt;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    if-eqz v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v0, p0

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Lbyt;->b()Z

    move-result v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v4, v16

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    throw v0

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    :goto_1f
    monitor-exit v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v6, v6, 0x1

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

    :goto_21
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop
.end method
