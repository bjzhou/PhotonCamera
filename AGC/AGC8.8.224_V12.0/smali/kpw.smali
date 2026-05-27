.class public final synthetic Lkpw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkpx;

.field public final synthetic b:Lkpr;


# direct methods
.method public synthetic constructor <init>(Lkpx;Lkpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkpw;->a:Lkpx;

    iput-object p2, p0, Lkpw;->b:Lkpr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lkpw;->a:Lkpx;

    iget-object v14, v1, Lkpw;->b:Lkpr;

    iget-object v0, v2, Lkpx;->b:Lkbc;

    const-string v3, "Publish"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, v2, Lkpx;->c:Llij;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    iget-object v0, v4, Llij;->c:Ljava/lang/Object;

    iget-object v3, v14, Lkpr;->a:Lkpm;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "names-"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v4, Llij;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lkqa;

    iget-boolean v3, v3, Lkqa;->h:Z

    check-cast v0, Lkqa;

    iget-object v0, v0, Lkqa;->j:Lmwn;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v8

    iget-object v9, v14, Lkpr;->e:Lmwn;

    invoke-virtual {v8, v9}, Lmwl;->h(Ljava/lang/Iterable;)V

    iget-object v9, v14, Lkpr;->f:Lmwn;

    invoke-virtual {v8, v9}, Lmwl;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v8}, Lmwl;->f()Lmwn;

    move-result-object v8

    invoke-virtual {v8}, Lmwn;->size()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    new-instance v0, Llhe;

    invoke-direct {v0, v7}, Llhe;-><init>(Landroid/util/ArrayMap;)V

    move-object v8, v0

    move-wide/from16 v16, v5

    goto/16 :goto_6

    :cond_0
    new-instance v9, Landroid/util/ArraySet;

    invoke-virtual {v8}, Lmwn;->size()I

    move-result v12

    invoke-direct {v9, v12}, Landroid/util/ArraySet;-><init>(I)V

    new-instance v12, Landroid/util/ArraySet;

    invoke-virtual {v8}, Lmwn;->size()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v8}, Lmwn;->cz()Lnac;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "|"

    if-eqz v15, :cond_3

    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkpj;

    iget-object v11, v15, Lkpj;->e:Lkqq;

    invoke-interface {v11}, Lkqq;->i()Lkqy;

    move-result-object v11

    iget-object v11, v11, Lkqy;->d:Ljava/lang/String;

    iget-object v1, v15, Lkpj;->e:Lkqq;

    invoke-interface {v1}, Lkqq;->i()Lkqy;

    move-result-object v1

    iget-object v1, v1, Lkqy;->a:Lkqr;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v15, v15, Lkpj;->e:Lkqq;

    invoke-interface {v15}, Lkqq;->i()Lkqy;

    move-result-object v15

    iget-object v15, v15, Lkqy;->b:Ljava/lang/String;

    move-object/from16 v17, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v13, v17

    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v8}, Lmwn;->size()I

    move-result v9

    if-ne v1, v9, :cond_4

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v8}, Lmwn;->size()I

    move-result v9

    if-ne v1, v9, :cond_4

    new-instance v0, Llhe;

    invoke-direct {v0, v7}, Llhe;-><init>(Landroid/util/ArrayMap;)V

    move-object v8, v0

    move-wide/from16 v16, v5

    goto/16 :goto_6

    :cond_4
    if-nez v3, :cond_7

    new-instance v1, Landroid/util/ArraySet;

    invoke-virtual {v8}, Lmwn;->size()I

    move-result v9

    invoke-direct {v1, v9}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v8}, Lmwn;->cz()Lnac;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkpj;

    iget-object v12, v11, Lkpj;->c:Ljava/lang/String;

    iget-object v11, v11, Lkpj;->e:Lkqq;

    invoke-interface {v11}, Lkqq;->i()Lkqy;

    move-result-object v11

    iget-object v11, v11, Lkqy;->d:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v8}, Lmwn;->size()I

    move-result v9

    if-ne v1, v9, :cond_7

    new-instance v0, Llhe;

    invoke-direct {v0, v7}, Llhe;-><init>(Landroid/util/ArrayMap;)V

    move-object v8, v0

    move-wide/from16 v16, v5

    goto/16 :goto_6

    :cond_7
    new-instance v1, Landroid/util/ArraySet;

    invoke-virtual {v0}, Lmwn;->size()I

    move-result v9

    invoke-direct {v1, v9}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lmoz;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    new-instance v0, Lkpg;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Lkpg;-><init>(Landroid/util/ArraySet;I)V

    invoke-static {v0, v8}, Lmjy;->x(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v9

    if-eqz v9, :cond_9

    instance-of v9, v8, Lmww;

    if-eqz v9, :cond_9

    move-object v9, v8

    check-cast v9, Lmww;

    invoke-virtual {v9}, Lmww;->cA()Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v8}, Llyh;->W(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v8

    array-length v9, v8

    invoke-static {v0, v9, v8}, Lmww;->P(Ljava/util/Comparator;I[Ljava/lang/Object;)Lmww;

    move-result-object v9

    :goto_3
    invoke-virtual {v9}, Lmww;->cz()Lnac;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v11, 0x1

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkpj;

    if-eqz v8, :cond_e

    iget-wide v12, v8, Lkpj;->b:J

    move-wide/from16 v16, v5

    iget-wide v5, v9, Lkpj;->b:J

    cmp-long v10, v12, v5

    if-nez v10, :cond_d

    iget-object v5, v8, Lkpj;->c:Ljava/lang/String;

    iget-object v6, v9, Lkpj;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v8, Lkpj;->e:Lkqq;

    invoke-interface {v5}, Lkqq;->i()Lkqy;

    move-result-object v5

    iget-object v5, v5, Lkqy;->d:Ljava/lang/String;

    iget-object v6, v9, Lkpj;->e:Lkqq;

    invoke-interface {v6}, Lkqq;->i()Lkqy;

    move-result-object v6

    iget-object v6, v6, Lkqy;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_a
    if-eqz v3, :cond_b

    iget-object v5, v8, Lkpj;->c:Ljava/lang/String;

    iget-object v6, v9, Lkpj;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_b
    iget-object v5, v9, Lkpj;->e:Lkqq;

    invoke-interface {v5}, Lkqq;->i()Lkqy;

    move-result-object v5

    iget-object v5, v5, Lkqy;->d:Ljava/lang/String;

    invoke-static {v5}, Lmoz;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v8, Lkpj;->e:Lkqq;

    invoke-interface {v5}, Lkqq;->i()Lkqy;

    move-result-object v5

    iget-object v5, v5, Lkqy;->d:Ljava/lang/String;

    iget-object v6, v9, Lkpj;->e:Lkqq;

    invoke-interface {v6}, Lkqq;->i()Lkqy;

    move-result-object v6

    iget-object v6, v6, Lkqy;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    iget-object v5, v8, Lkpj;->e:Lkqq;

    invoke-interface {v5}, Lkqq;->i()Lkqy;

    move-result-object v5

    iget-object v5, v5, Lkqy;->d:Ljava/lang/String;

    invoke-static {v5}, Lmoz;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v8, Lkpj;->e:Lkqq;

    invoke-interface {v5}, Lkqq;->i()Lkqy;

    move-result-object v5

    iget-object v5, v5, Lkqy;->d:Ljava/lang/String;

    iget-object v6, v9, Lkpj;->e:Lkqq;

    invoke-interface {v6}, Lkqq;->i()Lkqy;

    move-result-object v6

    iget-object v6, v6, Lkqy;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_e
    move-wide/from16 v16, v5

    :cond_f
    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v9

    move-wide/from16 v5, v16

    goto/16 :goto_4

    :cond_10
    move-wide/from16 v16, v5

    new-instance v0, Llhe;

    invoke-direct {v0, v7}, Llhe;-><init>(Landroid/util/ArrayMap;)V

    move-object v8, v0

    :goto_6
    iget-object v0, v4, Llij;->c:Ljava/lang/Object;

    iget-object v1, v14, Lkpr;->a:Lkpm;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "await-"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v14, Lkpr;->e:Lmwn;

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    :goto_7
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "Awaiting "

    if-eqz v1, :cond_11

    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpj;

    iget-object v10, v1, Lkpj;->e:Lkqq;

    iget-object v1, v4, Llij;->g:Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lkaq;->f(Ljava/lang/String;)V

    invoke-interface {v10}, Lkqq;->j()V

    goto :goto_7

    :cond_11
    iget-object v0, v14, Lkpr;->f:Lmwn;

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpj;

    iget-object v10, v1, Lkpj;->e:Lkqq;

    iget-object v1, v4, Llij;->g:Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lkaq;->f(Ljava/lang/String;)V

    invoke-interface {v10}, Lkqq;->j()V

    goto :goto_8

    :cond_12
    iget-object v0, v14, Lkpr;->g:Lmwn;

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkqq;

    iget-object v5, v4, Llij;->g:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lkaq;->f(Ljava/lang/String;)V

    invoke-interface {v1}, Lkqq;->j()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    :goto_a
    :try_start_5
    iget-object v0, v4, Llij;->g:Ljava/lang/Object;

    iget-object v1, v14, Lkpr;->a:Lkpm;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interrupted while publishing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", waiting for "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to complete!"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->i(Ljava/lang/String;)V

    :cond_13
    iget-object v0, v4, Llij;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v4, Llij;->e:Ljava/lang/Object;

    new-instance v1, Lkps;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v1

    move-wide/from16 v5, v16

    move-object v7, v14

    invoke-direct/range {v3 .. v13}, Lkps;-><init>(Llij;JLkpr;Llhe;[B[B[B[B[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v2, Lkpx;->b:Lkbc;

    :goto_b
    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_6
    iget-object v0, v2, Lkpx;->a:Lkaq;

    const-string v3, "Error publishing media group!"

    invoke-interface {v0, v3, v1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v14, Lkpr;->h:Lmvv;

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpk;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-interface {v0, v1}, Lkpk;->b(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    :try_start_8
    iget-object v0, v2, Lkpx;->a:Lkaq;

    const-string v4, "Error notifying a listener of onError"

    invoke-interface {v0, v4, v1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_c

    :cond_14
    iget-object v0, v2, Lkpx;->b:Lkbc;

    goto :goto_b

    :catchall_2
    move-exception v0

    iget-object v1, v2, Lkpx;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
