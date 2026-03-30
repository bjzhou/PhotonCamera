.class public final synthetic Lpsq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lpsr;

.field public final synthetic b:Lpsn;


# direct methods
.method public synthetic constructor <init>(Lpsr;Lpsn;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpsq;->b:Lpsn;

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

    :goto_1
    iput-object p1, p0, Lpsq;->a:Lpsr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final run()V
    .locals 16

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    :goto_3
    const-string v14, "|"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_26

    nop

    nop

    nop

    :cond_0
    :goto_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1b

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

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    iget-object v2, v0, Lpsq;->a:Lpsr;

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

    :goto_9
    throw v0

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iget-object v3, v2, Lpsr;->a:Lpdf;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    const/4 v9, 0x0

    nop

    :goto_f
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_1

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lpsh;

    nop

    nop

    nop

    iget-object v9, v6, Lpsh;->e:Lpth;

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v9}, Lpth;->j()V

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v5, v3, Lpsn;->f:Lryy;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lryy;->em()Lscp;

    move-result-object v5

    nop

    nop

    nop

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_2

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lpsh;

    nop

    nop

    iget-object v9, v6, Lpsh;->e:Lpth;

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v9}, Lpth;->j()V

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v5, v3, Lpsn;->g:Lryy;

    nop

    nop

    invoke-virtual {v5}, Lryy;->em()Lscp;

    move-result-object v5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lpth;

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v6}, Lpth;->j()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :try_start_1
    const-string v5, "MediaGrpInfPblsher"

    nop

    iget-object v6, v3, Lpsn;->a:Lpsj;

    nop

    nop

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Interrupted while publishing "

    nop

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", waiting for "

    nop

    nop

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to complete!"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, v0, Lrnb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lpdf;->g()V

    iget-object v5, v0, Lrnb;->e:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v6, Lpso;

    nop

    nop

    nop

    nop

    invoke-direct {v6, v0, v3, v4}, Lpso;-><init>(Lrnb;Lpsn;Lpic;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, v2, Lpsr;->a:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v13, :cond_4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    :try_start_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Lpsh;

    nop

    nop

    iget-object v15, v13, Lpsh;->e:Lpth;

    nop

    nop

    invoke-interface {v15}, Lpth;->i()Lptp;

    move-result-object v15

    nop

    nop

    nop

    nop

    iget-object v15, v15, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v9, v13, Lpsh;->e:Lpth;

    nop

    invoke-interface {v9}, Lpth;->i()Lptp;

    move-result-object v9

    nop

    nop

    iget-object v9, v9, Lptp;->a:Lpti;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    iget-object v13, v13, Lpsh;->e:Lpth;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v13}, Lpth;->i()Lptp;

    move-result-object v13

    nop

    iget-object v13, v13, Lptp;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    invoke-virtual {v8, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    if-nez v10, :cond_5

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_5
    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_6

    nop

    goto :goto_16

    nop

    nop

    :cond_6
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1c

    nop

    :goto_16
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    nop

    nop

    invoke-virtual {v7}, Lryy;->size()I

    move-result v9

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lryy;->size()I

    move-result v9

    nop

    if-ne v8, v9, :cond_7

    nop

    nop

    nop

    nop

    new-instance v4, Lpic;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v6}, Lpic;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Landroid/util/ArraySet;

    nop

    nop

    nop

    invoke-virtual {v7}, Lryy;->size()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v7}, Lryy;->em()Lscp;

    move-result-object v9

    nop

    nop

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_9

    nop

    nop

    nop

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    check-cast v10, Lpsh;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v10, Lpsh;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v10, Lpsh;->e:Lpth;

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Lpth;->i()Lptp;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v10, Lptp;->d:Ljava/lang/String;

    nop

    new-instance v12, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    if-nez v10, :cond_8

    nop

    nop

    nop

    :cond_9
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lryy;->size()I

    move-result v9

    nop

    nop

    if-ne v8, v9, :cond_a

    nop

    new-instance v4, Lpic;

    nop

    nop

    nop

    invoke-direct {v4, v6}, Lpic;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :cond_a
    new-instance v8, Landroid/util/ArraySet;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lryy;->size()I

    move-result v9

    nop

    nop

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v4}, Lryy;->em()Lscp;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_b

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Ljava/lang/String;

    nop

    nop

    invoke-static {v9}, Lrrf;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    nop

    nop

    nop

    :cond_b
    new-instance v4, Lhph;

    nop

    nop

    const/4 v9, 0x3

    nop

    nop

    nop

    invoke-direct {v4, v8, v9}, Lhph;-><init>(Ljava/lang/Object;I)V

    invoke-static {v4, v7}, Lsgj;->l(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v9

    nop

    nop

    if-eqz v9, :cond_c

    nop

    nop

    nop

    instance-of v9, v7, Lrzg;

    nop

    nop

    nop

    if-eqz v9, :cond_c

    nop

    nop

    nop

    nop

    move-object v9, v7

    nop

    nop

    nop

    check-cast v9, Lrzg;

    nop

    nop

    nop

    invoke-virtual {v9}, Lrzg;->en()Z

    move-result v10

    nop

    nop

    if-nez v10, :cond_c

    nop

    goto :goto_18

    nop

    nop

    nop

    :cond_c
    invoke-static {v7}, Lrgw;->af(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    array-length v9, v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v9, v7}, Lrzg;->N(Ljava/util/Comparator;I[Ljava/lang/Object;)Lrzg;

    move-result-object v9

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v9}, Lrzg;->em()Lscp;

    move-result-object v4

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    if-eqz v9, :cond_12

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Lpsh;

    nop

    if-eqz v7, :cond_11

    nop

    nop

    nop

    iget-wide v11, v7, Lpsh;->b:J

    nop

    nop

    nop

    nop

    iget-wide v13, v9, Lpsh;->b:J

    nop

    nop

    nop

    nop

    cmp-long v11, v11, v13

    nop

    nop

    nop

    nop

    if-nez v11, :cond_10

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v7, Lpsh;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v12, v9, Lpsh;->c:Ljava/lang/String;

    nop

    nop

    invoke-static {v11, v12}, Lrrf;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    nop

    nop

    nop

    if-eqz v11, :cond_d

    nop

    nop

    nop

    nop

    iget-object v11, v7, Lpsh;->e:Lpth;

    nop

    nop

    invoke-interface {v11}, Lpth;->i()Lptp;

    move-result-object v11

    nop

    iget-object v11, v11, Lptp;->d:Ljava/lang/String;

    nop

    nop

    iget-object v12, v9, Lpsh;->e:Lpth;

    nop

    invoke-interface {v12}, Lpth;->i()Lptp;

    move-result-object v12

    nop

    nop

    iget-object v12, v12, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v11, v12}, Lrrf;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    nop

    nop

    if-nez v11, :cond_10

    nop

    nop

    nop

    :cond_d
    if-eqz v5, :cond_e

    nop

    iget-object v11, v7, Lpsh;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v12, v9, Lpsh;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v11, v12}, Lrrf;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_10

    nop

    nop

    nop

    :cond_e
    iget-object v11, v9, Lpsh;->e:Lpth;

    nop

    nop

    nop

    invoke-interface {v11}, Lpth;->i()Lptp;

    move-result-object v11

    nop

    nop

    iget-object v11, v11, Lptp;->d:Ljava/lang/String;

    nop

    nop

    invoke-static {v11}, Lrrf;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    nop

    if-eqz v11, :cond_f

    nop

    iget-object v11, v7, Lpsh;->e:Lpth;

    nop

    invoke-interface {v11}, Lpth;->i()Lptp;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v11, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v12, v9, Lpsh;->e:Lpth;

    nop

    nop

    invoke-interface {v12}, Lpth;->i()Lptp;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v12, Lptp;->d:Ljava/lang/String;

    nop

    nop

    invoke-static {v11, v12}, Lrrf;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_10

    nop

    :cond_f
    iget-object v11, v7, Lpsh;->e:Lpth;

    nop

    nop

    nop

    invoke-interface {v11}, Lpth;->i()Lptp;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v11, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lrrf;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    if-eqz v11, :cond_11

    nop

    nop

    iget-object v7, v7, Lpsh;->e:Lpth;

    nop

    nop

    invoke-interface {v7}, Lpth;->i()Lptp;

    move-result-object v7

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v11, v9, Lpsh;->e:Lpth;

    nop

    invoke-interface {v11}, Lpth;->i()Lptp;

    move-result-object v11

    nop

    nop

    nop

    iget-object v11, v11, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v7, v11}, Lrrf;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    nop

    nop

    nop

    if-nez v7, :cond_11

    nop

    nop

    :cond_10
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    :cond_11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    invoke-virtual {v6, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v9

    nop

    nop

    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :cond_12
    new-instance v4, Lpic;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v6}, Lpic;-><init>(Ljava/lang/Object;)V

    :goto_1a
    iget-object v5, v0, Lrnb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v3, Lpsn;->a:Lpsj;

    nop

    nop

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    const-string v7, "await-"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lpdf;->h(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v5, v3, Lpsn;->e:Lryy;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lryy;->em()Lscp;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, v0, Lpsq;->b:Lpsn;

    nop

    nop

    nop

    :try_start_4
    iget-object v0, v2, Lpsr;->b:Lrnb;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    iget-object v4, v0, Lrnb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v5, v3, Lpsn;->a:Lpsj;

    nop

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    const-string v6, "names-"

    nop

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v4, v0, Lrnb;->c:Ljava/lang/Object;

    nop

    move-object v5, v4

    nop

    check-cast v5, Lpsu;

    nop

    nop

    nop

    nop

    iget-boolean v5, v5, Lpsu;->i:Z

    nop

    nop

    nop

    nop

    check-cast v4, Lpsu;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lpsu;->k:Lryy;

    nop

    new-instance v6, Landroid/util/ArrayMap;

    nop

    nop

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    new-instance v7, Lryw;

    nop

    nop

    invoke-direct {v7}, Lryw;-><init>()V

    iget-object v8, v3, Lpsn;->e:Lryy;

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Lryw;->j(Ljava/lang/Iterable;)V

    iget-object v8, v3, Lpsn;->f:Lryy;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Lryw;->j(Ljava/lang/Iterable;)V

    invoke-virtual {v7}, Lryw;->g()Lryy;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Lryy;->size()I

    move-result v8

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    if-ne v8, v10, :cond_13

    nop

    nop

    nop

    new-instance v4, Lpic;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v6}, Lpic;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_1a

    nop

    :cond_13
    new-instance v8, Landroid/util/ArraySet;

    nop

    invoke-virtual {v7}, Lryy;->size()I

    move-result v11

    nop

    nop

    invoke-direct {v8, v11}, Landroid/util/ArraySet;-><init>(I)V

    new-instance v11, Landroid/util/ArraySet;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lryy;->size()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v12}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v7}, Lryy;->em()Lscp;

    move-result-object v12

    nop

    nop

    :goto_1c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_20
    const-string v4, "Publish"

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

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_14

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_14
    goto/32 :goto_21

    nop

    :goto_24
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    :try_start_5
    const-string v4, "Error notifying a listener of onError"

    nop

    nop

    nop

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_6
    const-string v4, "Error publishing media group!"

    nop

    nop

    nop

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v3, Lpsn;->h:Lryb;

    nop

    nop

    invoke-virtual {v3}, Lryb;->t()Lscq;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_0

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lpsi;

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v4, v0}, Lpsi;->b(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, v2, Lpsr;->a:Lpdf;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    const-string v1, "MediaGroupPublisher"

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
.end method
