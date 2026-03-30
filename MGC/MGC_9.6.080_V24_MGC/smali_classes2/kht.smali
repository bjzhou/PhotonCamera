.class public final Lkht;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Llsp;

.field private final b:Lpcu;

.field private final c:I

.field private final d:Ljava/util/Map;

.field private final e:Lhoh;

.field private final f:Liof;


# direct methods
.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m()V
    .locals 18

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v1, p0

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

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_8
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_17

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

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

    :goto_c
    const v1, 0xf

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

    :goto_d
    monitor-enter p0

    nop

    nop

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lkht;->d:Ljava/util/Map;

    nop

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    if-eqz v3, :cond_16

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lkhs;

    nop

    nop

    iget-boolean v6, v5, Lkhs;->c:Z

    nop

    if-eqz v6, :cond_2

    nop

    nop

    nop

    nop

    iget-object v6, v5, Lkhs;->f:Ljava/util/List;

    nop

    nop

    nop

    if-eqz v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_3

    nop

    nop

    nop

    nop

    iget-object v6, v5, Lkhs;->a:Lsuu;

    nop

    invoke-virtual {v6}, Lsuu;->isDone()Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_3

    nop

    iget-object v3, v5, Lkhs;->a:Lsuu;

    nop

    nop

    nop

    nop

    sget-object v4, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lsuu;->e(Ljava/lang/Object;)Z

    goto :goto_e

    nop

    :cond_3
    iget-object v6, v5, Lkhs;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, v5, Lkhs;->e:J

    nop

    const-wide/16 v8, -0x1

    nop

    nop

    cmp-long v6, v6, v8

    nop

    nop

    if-nez v6, :cond_4

    nop

    nop

    nop

    iget-boolean v6, v5, Lkhs;->d:Z

    nop

    if-eqz v6, :cond_2

    nop

    nop

    :cond_4
    iget-object v6, v5, Lkhs;->a:Lsuu;

    nop

    nop

    invoke-virtual {v6}, Lsuu;->isDone()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_2

    nop

    nop

    nop

    nop

    iget-object v6, v5, Lkhs;->a:Lsuu;

    nop

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Llxm;

    nop

    iget-object v7, v5, Lkhs;->f:Ljava/util/List;

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    nop

    nop

    if-eqz v8, :cond_5

    nop

    nop

    nop

    iget-object v4, v1, Lkht;->b:Lpcu;

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    sget-object v5, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->TtFe:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v7, ": no alternatives, not adding metadata."

    nop

    nop

    nop

    nop

    invoke-static {v3, v5, v7}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Lpcu;->b(Ljava/lang/String;)V

    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v16, v2

    nop

    nop

    nop

    goto/16 :goto_15

    nop

    :cond_5
    iget-object v8, v1, Lkht;->b:Lpcu;

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

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

    const-string v11, "for "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    sget-object v3, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->fNAmrRffWK:Ljava/lang/String;

    nop

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " incoming timestamps"

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-interface {v8, v3}, Lpcu;->b(Ljava/lang/String;)V

    sget-object v3, Ltnz;->a:Ltnz;

    nop

    nop

    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget v8, v1, Lkht;->c:I

    nop

    nop

    nop

    nop

    iget-object v9, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_6

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_6
    iget-object v9, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Ltnz;

    nop

    iget v10, v9, Ltnz;->b:I

    nop

    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v10, v11

    nop

    nop

    iput v10, v9, Ltnz;->b:I

    nop

    nop

    iput v8, v9, Ltnz;->e:I

    nop

    nop

    nop

    nop

    iget-boolean v8, v5, Lkhs;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-wide v12, v5, Lkhs;->e:J

    nop

    nop

    nop

    nop

    const-wide/16 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v8, v12, v14

    nop

    nop

    nop

    nop

    nop

    if-ltz v8, :cond_7

    nop

    const/4 v4, 0x1

    nop

    nop

    :cond_7
    invoke-static {v4}, Lrrf;->x(Z)V

    iget-wide v12, v5, Lkhs;->e:J

    nop

    nop

    nop

    iget-object v4, v1, Lkht;->a:Llsp;

    nop

    invoke-interface {v4, v12, v13}, Llsp;->b(J)Llso;

    move-result-object v4

    nop

    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lkht;->b:Lpcu;

    nop

    nop

    nop

    nop

    const-string v8, "Score not found for frame "

    nop

    const-string v14, " ... is the ringbuffer too small or we didn\'t even compute it?"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12, v13, v8, v14}, Lmf;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v8}, Lpcu;->h(Ljava/lang/String;)V

    const/high16 v4, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_8
    iget v4, v4, Llso;->b:F

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    :cond_9
    const/4 v4, 0x0

    nop

    nop

    :goto_f
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    const v12, 0x3f4a04dd

    nop

    if-eqz v8, :cond_12

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Lpcd;

    nop

    nop

    nop

    nop

    nop

    iget-wide v13, v8, Lpcd;->a:J

    nop

    nop

    iget v8, v8, Lpcd;->b:F

    nop

    nop

    nop

    nop

    nop

    iget-boolean v15, v5, Lkhs;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v15, :cond_c

    nop

    nop

    nop

    iget v12, v1, Lkht;->c:I

    nop

    nop

    const/4 v15, 0x3

    nop

    if-eq v12, v15, :cond_a

    nop

    nop

    iget-object v12, v1, Lkht;->b:Lpcu;

    nop

    new-instance v15, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   for Long Shot frame "

    nop

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " the score "

    nop

    nop

    nop

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    nop

    sget-object v9, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->CRlByyNjBL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    invoke-interface {v12, v9}, Lpcu;->b(Ljava/lang/String;)V

    const v9, 0x3f8f231c

    nop

    nop

    nop

    mul-float/2addr v8, v9

    nop

    nop

    nop

    nop

    move-object/from16 v16, v2

    nop

    nop

    :goto_11
    move-object/from16 v17, v7

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    :cond_a
    iget-object v9, v1, Lkht;->e:Lhoh;

    nop

    nop

    nop

    sget-object v12, Lhna;->o:Lhmn;

    nop

    nop

    invoke-virtual {v9, v12}, Lhoh;->p(Lhmn;)Z

    move-result v9

    nop

    nop

    nop

    if-eqz v9, :cond_b

    nop

    nop

    nop

    sget-object v9, Ljzg;->b:Lmhz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v8}, Lmhz;->A(F)F

    move-result v9

    nop

    goto :goto_12

    nop

    :cond_b
    sget-object v9, Ljzg;->a:Lmhz;

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v8}, Lmhz;->A(F)F

    move-result v9

    nop

    nop

    nop

    :goto_12
    iget-object v12, v1, Lkht;->b:Lpcu;

    nop

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    nop

    nop

    filled-new-array {v10, v8, v11}, [Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    const-string v10, "   Long Shot frame %d score is %f. Converted to confidence %f"

    nop

    nop

    nop

    nop

    invoke-static {v15, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    invoke-interface {v12, v8}, Lpcu;->b(Ljava/lang/String;)V

    move-object/from16 v16, v2

    nop

    move-object/from16 v17, v7

    nop

    nop

    nop

    move v8, v9

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    :cond_c
    iget v9, v1, Lkht;->c:I

    nop

    nop

    nop

    const v10, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ne v9, v11, :cond_e

    nop

    nop

    nop

    nop

    cmpg-float v9, v8, v10

    nop

    nop

    nop

    nop

    if-gez v9, :cond_d

    nop

    iget-object v9, v1, Lkht;->b:Lpcu;

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   for frame "

    nop

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " set the score to 0 because the score "

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " is below the absolute threshold 0.2"

    nop

    nop

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    invoke-interface {v9, v8}, Lpcu;->b(Ljava/lang/String;)V

    const/4 v8, 0x0

    nop

    nop

    nop

    :cond_d
    iget-object v9, v1, Lkht;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    nop

    nop

    move-object/from16 v16, v2

    nop

    nop

    nop

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v11, v15, v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    const-string v11, "   for Top Shot frame %d, the score %f is scaled by %f"

    nop

    invoke-static {v10, v11, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-interface {v9, v2}, Lpcu;->b(Ljava/lang/String;)V

    mul-float/2addr v8, v12

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    nop

    :cond_e
    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    cmpg-float v2, v8, v10

    nop

    nop

    if-gez v2, :cond_f

    nop

    nop

    nop

    iget-object v2, v1, Lkht;->b:Lpcu;

    nop

    nop

    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   for frame "

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " set the score to 0 because the score "

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " is below the absolute threshold 0.2"

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    invoke-interface {v2, v8}, Lpcu;->b(Ljava/lang/String;)V

    const/4 v8, 0x0

    nop

    nop

    nop

    :cond_f
    iget-object v2, v1, Lkht;->e:Lhoh;

    nop

    nop

    nop

    sget-object v9, Lhna;->o:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v9}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    sub-float v9, v8, v4

    nop

    nop

    nop

    iget-object v10, v1, Lkht;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v2}, Ljzh;->a(FZ)F

    move-result v2

    nop

    nop

    nop

    nop

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    nop

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    nop

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    nop

    move-object/from16 v17, v7

    nop

    nop

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v12, v8, v15, v9, v7}, [Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    const-string v8, "   Top Shot frame %d score is %f. Shutter frame score is %f. The diff %f is converted to confidence %f"

    nop

    invoke-static {v11, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v10, v7}, Lpcu;->b(Ljava/lang/String;)V

    move v8, v2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v8}, Lkht;->i(F)V

    sget-object v2, Ltny;->a:Ltny;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {v7, v13, v14, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    if-nez v7, :cond_10

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_10
    iget-object v7, v2, Ltkb;->b:Ltkg;

    nop

    move-object v11, v7

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Ltny;

    nop

    nop

    nop

    iget v12, v11, Ltny;->b:I

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    or-int/2addr v12, v13

    nop

    nop

    nop

    nop

    iput v12, v11, Ltny;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v9, v11, Ltny;->c:J

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-nez v7, :cond_11

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_11
    iget-object v7, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ltny;

    nop

    nop

    iget v9, v7, Ltny;->b:I

    nop

    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    or-int/2addr v9, v10

    nop

    iput v9, v7, Ltny;->b:I

    nop

    iput v8, v7, Ltny;->d:F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    check-cast v2, Ltny;

    nop

    nop

    iget-object v7, v1, Lkht;->b:Lpcu;

    nop

    nop

    iget-wide v8, v2, Ltny;->c:J

    nop

    nop

    iget v10, v2, Ltny;->d:F

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   for frame "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " adding score "

    nop

    nop

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ltkb;->Q(Ltny;)V

    move-object/from16 v2, v16

    nop

    move-object/from16 v7, v17

    nop

    nop

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    goto/16 :goto_10

    nop

    nop

    :cond_12
    move-object/from16 v16, v2

    nop

    nop

    nop

    nop

    iget-boolean v2, v5, Lkhs;->d:Z

    nop

    if-nez v2, :cond_15

    nop

    nop

    nop

    iget v2, v1, Lkht;->c:I

    nop

    nop

    nop

    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v7, :cond_13

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lkht;->b:Lpcu;

    nop

    nop

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    iget-wide v8, v5, Lkhs;->e:J

    nop

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    nop

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    nop

    nop

    nop

    nop

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    const-string v9, "   for Top Shot base frame %d, the score %f is scaled by %f"

    nop

    nop

    nop

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v2, v7}, Lpcu;->b(Ljava/lang/String;)V

    mul-float v9, v4, v12

    nop

    goto :goto_14

    nop

    :cond_13
    const/4 v9, 0x0

    nop

    :goto_14
    invoke-static {v9}, Lkht;->i(F)V

    iget-object v2, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_14

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_14
    iget-object v2, v3, Ltkb;->b:Ltkg;

    nop

    check-cast v2, Ltnz;

    nop

    iget v4, v2, Ltnz;->b:I

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    or-int/2addr v4, v7

    nop

    nop

    nop

    nop

    iput v4, v2, Ltnz;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v9, v2, Ltnz;->d:F

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lkht;->b:Lpcu;

    nop

    nop

    iget-wide v4, v5, Lkhs;->e:J

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   for the base frame at "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " : fetched score "

    nop

    nop

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lpcu;->b(Ljava/lang/String;)V

    :cond_15
    invoke-static {}, Liof;->o()V

    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    check-cast v2, Ltnz;

    nop

    nop

    nop

    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    :goto_15
    invoke-virtual {v6, v3}, Lsuu;->e(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_16
    iget-object v2, v1, Lkht;->d:Ljava/util/Map;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :cond_17
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_18

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljava/util/Map$Entry;

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lkhs;

    nop

    nop

    nop

    iget-wide v5, v5, Lkhs;->b:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    nop

    nop

    const-wide v9, -0x8bb2c97000L

    nop

    nop

    nop

    nop

    add-long/2addr v7, v9

    nop

    nop

    nop

    nop

    cmp-long v5, v5, v7

    nop

    nop

    if-gez v5, :cond_17

    nop

    nop

    nop

    iget-object v5, v1, Lkht;->b:Lpcu;

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    const-string v7, "cleaning up entry for "

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lpcu;->b(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Llxm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    :goto_17
    if-ge v4, v2, :cond_1

    nop

    nop

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Llxm;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lkht;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(Llsp;Liof;Lpcu;Lhoh;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lkht;->d:Ljava/util/Map;

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

    :goto_3
    iget-object p1, p2, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    sget-object p2, Lhna;->af:Lhmn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p2, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    check-cast p1, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    const-string p1, "MomentsMetadata"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lkht;->b:Lpcu;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

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
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lkht;->a:Llsp;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Lkht;->f:Liof;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p3, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    iput-object p4, p0, Lkht;->e:Lhoh;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x3

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_16
    iput p1, p0, Lkht;->c:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized d5484163cd8d335e6b17663474ff5f2bm(Llxm;)Lkhs;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

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

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    return-object p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_a

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

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lkht;->d:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Lkht;->d:Ljava/util/Map;

    nop

    nop

    new-instance v1, Lkhs;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Lkhs;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lkht;->d:Ljava/util/Map;

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lkhs;

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop
.end method

.method private static i(F)V
    .locals 1

    goto/32 :goto_4

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
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_2
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

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

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Llxm;)Lsui;
    .locals 4

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lkht;->b:Lpcu;

    nop

    nop

    nop

    const-string v1, "uri "

    nop

    nop

    nop

    nop

    const-string v2, " is collecting Moments metadata"

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lkht;->d5484163cd8d335e6b17663474ff5f2bm(Llxm;)Lkhs;

    move-result-object v3

    nop

    nop

    nop

    invoke-static {p1, v1, v2}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lpcu;->b(Ljava/lang/String;)V

    iget-object p1, v3, Lkhs;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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
.end method

.method public final declared-synchronized b(Llxm;J)V
    .locals 3

    goto/32 :goto_a

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x20

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : main session has base frame "

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lkht;->b:Lpcu;

    nop

    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lkht;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    nop

    nop

    iget-object v0, p0, Lkht;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lkhs;

    nop

    nop

    nop

    iput-wide p2, p1, Lkhs;->e:J

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-direct {p0}, Lkht;->19e596a3e324281407eb5c11093c0152m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const-string v0, "uri "

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

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

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

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xd

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

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_c
    add-int v0, v0, v1

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

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Llxm;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0, p1}, Lkht;->d5484163cd8d335e6b17663474ff5f2bm(Llxm;)Lkhs;

    move-result-object p1

    nop

    nop

    iget-boolean v0, p1, Lkhs;->c:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    iget-object p1, p1, Lkhs;->a:Lsuu;

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    invoke-virtual {p1, v0}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

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

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final declared-synchronized d(Llxm;Ljava/util/List;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

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

    :goto_6
    const-string v0, "uri "

    nop

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    add-int v0, v0, v1

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
    const v1, 0x10

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

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    :try_start_0
    invoke-direct {p0, p1}, Lkht;->d5484163cd8d335e6b17663474ff5f2bm(Llxm;)Lkhs;

    move-result-object v1

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : Moments has "

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frames"

    nop

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkht;->b:Lpcu;

    nop

    invoke-interface {v0, p1}, Lpcu;->b(Ljava/lang/String;)V

    iput-object p2, v1, Lkhs;->f:Ljava/util/List;

    nop

    nop

    invoke-direct {p0}, Lkht;->19e596a3e324281407eb5c11093c0152m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Llxm;)V
    .locals 3

    goto/32 :goto_9

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

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lkht;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "uri "

    nop

    nop

    nop

    const-string v2, " has LongS active"

    nop

    nop

    invoke-static {p1, v1, v2}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkht;->d5484163cd8d335e6b17663474ff5f2bm(Llxm;)Lkhs;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lkhs;->a(Lkhs;)V

    const/4 v0, 0x1

    nop

    nop

    iput-boolean v0, p1, Lkhs;->d:Z

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f(Llxm;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lkht;->b:Lpcu;

    nop

    const-string v1, "uri "

    nop

    nop

    const-string v2, " has Moments active"

    nop

    nop

    invoke-static {p1, v1, v2}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkht;->d5484163cd8d335e6b17663474ff5f2bm(Llxm;)Lkhs;

    move-result-object p1

    nop

    nop

    invoke-static {p1}, Lkhs;->a(Lkhs;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p1, Lkhs;->d:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1e

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

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
