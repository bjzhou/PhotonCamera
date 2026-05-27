.class public final Lfrf;
.super Ljava/lang/Object;

# interfaces
.implements Lfsn;


# instance fields
.field private final a:Lgsm;

.field private final b:Lkaq;

.field private final c:I

.field private final d:Ldhi;

.field private final e:Ljava/util/Map;

.field private final f:Ldne;


# direct methods
.method public constructor <init>(Lgsm;Ldne;Lkaq;Ldhi;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lfrf;->e:Ljava/util/Map;

    iput-object p1, p0, Lfrf;->a:Lgsm;

    iput-object p2, p0, Lfrf;->f:Ldne;

    const-string p1, "MomentsMetadata"

    invoke-interface {p3, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lfrf;->b:Lkaq;

    iput-object p4, p0, Lfrf;->d:Ldhi;

    iget-object p1, p2, Ldne;->b:Ljava/lang/Object;

    sget-object p2, Ldhw;->X:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->l(Ldhj;)Z

    move-result p1

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lfrf;->c:I

    return-void
.end method

.method private final declared-synchronized g(Lgxy;)Lfre;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfrf;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfrf;->e:Ljava/util/Map;

    new-instance v1, Lfre;

    invoke-direct {v1}, Lfre;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lfrf;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfre;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized h()V
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lfrf;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfre;

    iget-boolean v6, v5, Lfre;->c:Z

    if-eqz v6, :cond_0

    iget-object v6, v5, Lfre;->f:Ljava/util/List;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lfre;->a:Lnph;

    invoke-virtual {v6}, Lnph;->isDone()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v3, v5, Lfre;->a:Lnph;

    sget-object v4, Lmpx;->a:Lmpx;

    invoke-virtual {v3, v4}, Lnph;->e(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, v5, Lfre;->f:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-wide v6, v5, Lfre;->e:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    iget-boolean v6, v5, Lfre;->d:Z

    if-eqz v6, :cond_0

    :cond_2
    iget-object v6, v5, Lfre;->a:Lnph;

    invoke-virtual {v6}, Lnph;->isDone()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v5, Lfre;->a:Lnph;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgxy;

    iget-object v7, v5, Lfre;->f:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v4, v1, Lfrf;->b:Lkaq;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": no alternatives, not adding metadata."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lkaq;->b(Ljava/lang/String;)V

    sget-object v3, Lmpx;->a:Lmpx;

    goto/16 :goto_b

    :cond_3
    iget-object v8, v1, Lfrf;->b:Lkaq;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " incoming timestamps"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Lkaq;->b(Ljava/lang/String;)V

    sget-object v3, Loao;->f:Loao;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget v8, v1, Lfrf;->c:I

    iget-object v9, v3, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_4
    iget-object v9, v3, Lnwn;->b:Lnws;

    check-cast v9, Loao;

    iget v10, v9, Loao;->a:I

    const/4 v11, 0x2

    or-int/2addr v10, v11

    iput v10, v9, Loao;->a:I

    iput v8, v9, Loao;->d:I

    iget-boolean v8, v5, Lfre;->d:Z

    if-nez v8, :cond_7

    iget-wide v12, v5, Lfre;->e:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-ltz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Lmoz;->p(Z)V

    iget-wide v12, v5, Lfre;->e:J

    iget-object v8, v1, Lfrf;->a:Lgsm;

    invoke-interface {v8, v12, v13}, Lgsm;->d(J)Lgsl;

    move-result-object v8

    if-nez v8, :cond_6

    iget-object v8, v1, Lfrf;->b:Lkaq;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Score not found for frame "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ... is the ringbuffer too small or we didn\'t even compute it?"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Lkaq;->i(Ljava/lang/String;)V

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_2

    :cond_6
    iget v8, v8, Lgsl;->b:F

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v14, 0x3

    if-eqz v12, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljzx;

    iget-wide v9, v12, Ljzx;->a:J

    iget v12, v12, Ljzx;->b:F

    iget-boolean v15, v5, Lfre;->d:Z

    if-eqz v15, :cond_b

    iget v13, v1, Lfrf;->c:I

    if-eq v13, v14, :cond_8

    iget-object v13, v1, Lfrf;->b:Lkaq;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "   for Long Shot frame "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " the score "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " is scaled by 1.118259"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lkaq;->b(Ljava/lang/String;)V

    const v13, 0x3f8f231c

    mul-float v12, v12, v13

    goto/16 :goto_9

    :cond_8
    iget-object v13, v1, Lfrf;->d:Ldhi;

    sget-object v15, Ldhw;->j:Ldhj;

    invoke-interface {v13, v15}, Ldhi;->l(Ldhj;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v1, Lfrf;->d:Ldhi;

    invoke-interface {v13}, Ldhi;->e()V

    const/4 v13, 0x1

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_a

    sget-object v13, Lfjv;->b:Lgxb;

    invoke-virtual {v13, v12}, Lgxb;->k(F)F

    move-result v13

    goto :goto_5

    :cond_a
    sget-object v13, Lfjv;->a:Lgxb;

    invoke-virtual {v13, v12}, Lgxb;->k(F)F

    move-result v13

    :goto_5
    iget-object v15, v1, Lfrf;->b:Lkaq;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v4

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v14, v16

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/16 v17, 0x2

    aput-object v12, v14, v17

    const-string v12, "   Long Shot frame %d score is %f. Converted to confidence %f"

    invoke-static {v11, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Lkaq;->b(Ljava/lang/String;)V

    move v12, v13

    goto/16 :goto_9

    :cond_b
    iget v11, v1, Lfrf;->c:I

    const v15, 0x3e4ccccd    # 0.2f

    const/4 v13, 0x2

    if-ne v11, v13, :cond_d

    cmpg-float v11, v12, v15

    if-gez v11, :cond_c

    iget-object v11, v1, Lfrf;->b:Lkaq;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "   for frame "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " set the score to 0 because the score "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " is below the absolute threshold 0.2"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lkaq;->b(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_6

    :cond_c
    :goto_6
    iget-object v11, v1, Lfrf;->b:Lkaq;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const v15, 0x3f4a04dd

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const/4 v15, 0x2

    aput-object v19, v14, v15

    const-string v15, "   for Top Shot frame %d, the score %f is scaled by %f"

    invoke-static {v13, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lkaq;->b(Ljava/lang/String;)V

    const v11, 0x3f4a04dd

    mul-float v12, v12, v11

    goto/16 :goto_9

    :cond_d
    cmpg-float v11, v12, v15

    if-gez v11, :cond_e

    iget-object v11, v1, Lfrf;->b:Lkaq;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "   for frame "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " set the score to 0 because the score "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " is below the absolute threshold 0.2"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lkaq;->b(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_7

    :cond_e
    :goto_7
    iget-object v11, v1, Lfrf;->d:Ldhi;

    sget-object v13, Ldhw;->j:Ldhj;

    invoke-interface {v11, v13}, Ldhi;->l(Ldhj;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, v1, Lfrf;->d:Ldhi;

    invoke-interface {v11}, Ldhi;->e()V

    const/4 v11, 0x1

    goto :goto_8

    :cond_f
    const/4 v11, 0x0

    :goto_8
    sub-float v13, v12, v8

    invoke-static {v13, v11}, Lfjw;->a(FZ)F

    move-result v11

    iget-object v15, v1, Lfrf;->b:Lkaq;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v20, 0x0

    aput-object v18, v4, v20

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v4, v16

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/16 v17, 0x2

    aput-object v12, v4, v17

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v4, v13

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x4

    aput-object v12, v4, v13

    const-string v12, "   Top Shot frame %d score is %f. Shutter frame score is %f. The diff %f is converted to confidence %f"

    invoke-static {v14, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Lkaq;->b(Ljava/lang/String;)V

    move v12, v11

    :goto_9
    invoke-static {v12}, Lfrf;->i(F)V

    sget-object v4, Loan;->d:Loan;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v9, v10, v13}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    iget-object v11, v4, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_10
    iget-object v11, v4, Lnwn;->b:Lnws;

    move-object v13, v11

    check-cast v13, Loan;

    iget v14, v13, Loan;->a:I

    const/4 v15, 0x1

    or-int/2addr v14, v15

    iput v14, v13, Loan;->a:I

    iput-wide v9, v13, Loan;->b:J

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_11
    iget-object v9, v4, Lnwn;->b:Lnws;

    check-cast v9, Loan;

    iget v10, v9, Loan;->a:I

    const/4 v11, 0x2

    or-int/2addr v10, v11

    iput v10, v9, Loan;->a:I

    iput v12, v9, Loan;->c:F

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Loan;

    iget-object v9, v1, Lfrf;->b:Lkaq;

    iget-wide v10, v4, Loan;->b:J

    iget v12, v4, Loan;->c:F

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   for frame "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " adding score "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lnwn;->S(Loan;)V

    const/4 v4, 0x0

    const/4 v11, 0x2

    goto/16 :goto_3

    :cond_12
    iget-boolean v4, v5, Lfre;->d:Z

    if-nez v4, :cond_15

    iget v4, v1, Lfrf;->c:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_13

    iget-object v4, v1, Lfrf;->b:Lkaq;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-wide v10, v5, Lfre;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x3f4a04dd

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v10, 0x2

    aput-object v11, v9, v10

    const-string v10, "   for Top Shot base frame %d, the score %f is scaled by %f"

    invoke-static {v7, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lkaq;->b(Ljava/lang/String;)V

    const v4, 0x3f4a04dd

    mul-float v9, v8, v4

    goto :goto_a

    :cond_13
    const/4 v9, 0x0

    :goto_a
    invoke-static {v9}, Lfrf;->i(F)V

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_14
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loao;

    iget v7, v4, Loao;->a:I

    const/4 v8, 0x1

    or-int/2addr v7, v8

    iput v7, v4, Loao;->a:I

    iput v9, v4, Loao;->c:F

    iget-object v4, v1, Lfrf;->b:Lkaq;

    iget-wide v7, v5, Lfre;->e:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   for the base frame at "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " : fetched score "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lkaq;->b(Ljava/lang/String;)V

    :cond_15
    iget-object v4, v1, Lfrf;->f:Ldne;

    invoke-virtual {v4}, Ldne;->k()V

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Loao;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    :goto_b
    invoke-virtual {v6, v3}, Lnph;->e(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    const/4 v11, 0x0

    iget-object v2, v1, Lfrf;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfre;

    iget-wide v4, v4, Lfre;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    const-wide v8, -0x8bb2c97000L

    add-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-gez v8, :cond_17

    iget-object v4, v1, Lfrf;->b:Lkaq;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cleaning up entry for "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgxy;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgxy;

    iget-object v5, v1, Lfrf;->e:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method private static i(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lgxy;)Lnou;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lfrf;->g(Lgxy;)Lfre;

    move-result-object v0

    iget-object v1, p0, Lfrf;->b:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is collecting Moments metadata"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p1, v0, Lfre;->a:Lnph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lgxy;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfrf;->b:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : main session has base frame "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lfrf;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfrf;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfre;

    iput-wide p2, p1, Lfre;->e:J

    :cond_0
    invoke-direct {p0}, Lfrf;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lgxy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lfrf;->g(Lgxy;)Lfre;

    move-result-object p1

    iget-boolean v0, p1, Lfre;->c:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lfre;->a:Lnph;

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lgxy;Ljava/util/List;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lfrf;->g(Lgxy;)Lfre;

    move-result-object v0

    iget-object v1, p0, Lfrf;->b:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : Moments has "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frames"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lkaq;->b(Ljava/lang/String;)V

    iput-object p2, v0, Lfre;->f:Ljava/util/List;

    invoke-direct {p0}, Lfrf;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lgxy;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfrf;->b:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has LongS active"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lfrf;->g(Lgxy;)Lfre;

    move-result-object p1

    invoke-static {p1}, Lfre;->a(Lfre;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lfre;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Lgxy;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfrf;->b:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has Moments active"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lfrf;->g(Lgxy;)Lfre;

    move-result-object p1

    invoke-static {p1}, Lfre;->a(Lfre;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lfre;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
