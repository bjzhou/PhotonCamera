.class public final Ldmt;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a()Ldmu;
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v1, Ldmr;->c:Ldnj;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v3

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v3, v0

    nop

    nop

    nop

    nop

    check-cast v3, Ldmr;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Ldmr;->b:Ldmu;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    check-cast v4, Ldmr;

    nop

    iget-object v4, v4, Ldmr;->a:Landroid/os/LocaleList;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-eq v2, v4, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_11

    nop

    nop

    nop

    :cond_2
    :goto_b
    :try_start_1
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ge v5, v3, :cond_3

    nop

    nop

    nop

    nop

    new-instance v6, Ldms;

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    nop

    nop

    nop

    invoke-direct {v6, v7}, Ldms;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    new-instance v3, Ldmu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Ldmu;-><init>(Ljava/util/List;)V

    move-object v4, v0

    nop

    check-cast v4, Ldmr;

    nop

    nop

    nop

    nop

    iput-object v2, v4, Ldmr;->a:Landroid/os/LocaleList;

    nop

    nop

    nop

    check-cast v0, Ldmr;

    nop

    nop

    nop

    iput-object v3, v0, Ldmr;->b:Ldmu;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    check-cast v1, Ldmr;

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

    :goto_e
    sget-object v0, Ldmw;->a:Ldmv;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    monitor-exit v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    monitor-exit v1

    nop

    :goto_11
    goto/32 :goto_1

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

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    const v1, 0xa

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    throw v0

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop
.end method
