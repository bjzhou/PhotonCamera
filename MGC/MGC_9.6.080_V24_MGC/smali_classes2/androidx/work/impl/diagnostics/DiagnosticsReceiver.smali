.class public Landroidx/work/impl/diagnostics/DiagnosticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "DiagnosticsRcvr"

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

    nop

    :goto_1
    sput-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    nop

    goto/32 :goto_2

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

    nop

    :goto_3
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 38

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {}, Leqh;->b()V

    :try_start_0
    invoke-static/range {p1 .. p1}, Leqo;->a(Landroid/content/Context;)Leqo;

    move-result-object v0

    nop

    const-class v1, Landroidx/work/impl/workers/DiagnosticsWorker;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Leqp;

    nop

    nop

    nop

    invoke-direct {v2, v1}, Leqp;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lhdu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lhdu;-><init>(Leqp;)V

    iget-object v3, v2, Leqp;->b:Levq;

    nop

    iget-object v3, v3, Levq;->i:Leps;

    nop

    nop

    invoke-virtual {v3}, Leps;->b()Z

    move-result v4

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    if-nez v4, :cond_1

    nop

    nop

    iget-boolean v4, v3, Leps;->e:Z

    nop

    nop

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    iget-boolean v4, v3, Leps;->c:Z

    nop

    nop

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    iget-boolean v3, v3, Leps;->d:Z

    nop

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    move v3, v5

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    :goto_4
    move v3, v6

    nop

    nop

    nop

    :goto_5
    iget-object v4, v2, Leqp;->b:Levq;

    nop

    nop

    nop

    nop

    iget-boolean v7, v4, Levq;->o:Z

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_4

    nop

    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    iget-wide v7, v4, Levq;->f:J

    nop

    nop

    nop

    nop

    const-wide/16 v9, 0x0

    nop

    nop

    nop

    nop

    cmp-long v3, v7, v9

    nop

    nop

    nop

    nop

    if-gtz v3, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_2
    const/4 v0, 0x0

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->iMaUwAbYhegp:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    :cond_3
    const-string v0, "Expedited jobs only support network and storage constraints"

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    :cond_4
    :goto_6
    iget-object v3, v4, Levq;->u:Ljava/lang/String;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_b

    nop

    nop

    nop

    nop

    iget-object v3, v4, Levq;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v7, "."

    nop

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_5

    nop

    nop

    nop

    invoke-static {v3, v8}, Luch;->B(Ljava/lang/CharSequence;[Ljava/lang/String;)Lueb;

    move-result-object v7

    nop

    nop

    nop

    nop

    new-instance v8, Lueg;

    nop

    nop

    nop

    nop

    invoke-direct {v8, v7, v5}, Lueg;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    if-eqz v9, :cond_8

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    check-cast v9, Ludl;

    nop

    nop

    invoke-static {v3, v9}, Luch;->m(Ljava/lang/CharSequence;Ludl;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    nop

    nop

    :cond_5
    invoke-static {v3, v7, v5}, Luch;->u(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v8

    nop

    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v8, v9, :cond_7

    nop

    nop

    new-instance v10, Ljava/util/ArrayList;

    nop

    nop

    const/16 v11, 0xa

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v5

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {v3, v11, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v8, 0x1

    nop

    invoke-static {v3, v7, v11}, Luch;->u(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v8

    nop

    nop

    nop

    if-ne v8, v9, :cond_6

    nop

    nop

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v11, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v10

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_7
    invoke-static {v3}, Lrkm;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    nop

    nop

    nop

    nop

    :cond_8
    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    nop

    if-ne v3, v6, :cond_9

    nop

    nop

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    goto :goto_9

    nop

    nop

    nop

    :cond_9
    invoke-static {v7}, Lrkm;->av(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    nop

    nop

    nop

    nop

    const/16 v7, 0x7f

    nop

    nop

    nop

    nop

    nop

    if-le v6, v7, :cond_a

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v6}, Lucd;->i(II)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    iput-object v3, v4, Levq;->u:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :cond_b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Leqp;->a:Ljava/util/UUID;

    nop

    new-instance v15, Levq;

    nop

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Leqp;->b:Levq;

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v3, Levq;->b:Ljava/lang/String;

    nop

    nop

    nop

    iget v6, v3, Levq;->v:I

    nop

    nop

    nop

    nop

    iget-object v8, v3, Levq;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v9, Lepu;

    nop

    nop

    iget-object v4, v3, Levq;->d:Lepu;

    nop

    nop

    invoke-direct {v9, v4}, Lepu;-><init>(Lepu;)V

    new-instance v10, Lepu;

    nop

    nop

    nop

    nop

    iget-object v4, v3, Levq;->e:Lepu;

    nop

    nop

    nop

    nop

    invoke-direct {v10, v4}, Lepu;-><init>(Lepu;)V

    iget-wide v11, v3, Levq;->f:J

    nop

    iget-wide v13, v3, Levq;->g:J

    nop

    nop

    nop

    nop

    move-object/from16 p0, v0

    nop

    nop

    move-object/from16 p1, v1

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, v3, Levq;->h:J

    nop

    nop

    new-instance v4, Leps;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p2, v2

    nop

    nop

    iget-object v2, v3, Levq;->i:Leps;

    nop

    nop

    nop

    invoke-direct {v4, v2}, Leps;-><init>(Leps;)V

    iget v2, v3, Levq;->j:I

    nop

    nop

    nop

    move/from16 v18, v2

    nop

    nop

    nop

    iget v2, v3, Levq;->w:I

    nop

    nop

    nop

    nop

    move-wide/from16 v16, v0

    nop

    iget-wide v0, v3, Levq;->k:J

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v20, v0

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, v3, Levq;->l:J

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v22, v0

    nop

    iget-wide v0, v3, Levq;->m:J

    nop

    nop

    nop

    nop

    move-wide/from16 v24, v0

    nop

    nop

    iget-wide v0, v3, Levq;->n:J

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v26, v0

    nop

    nop

    nop

    nop

    iget-boolean v0, v3, Levq;->o:Z

    nop

    nop

    nop

    iget v1, v3, Levq;->x:I

    nop

    move/from16 v29, v1

    nop

    nop

    nop

    nop

    iget v1, v3, Levq;->p:I

    nop

    nop

    nop

    move/from16 v28, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v30, v1

    nop

    nop

    nop

    nop

    iget-wide v0, v3, Levq;->r:J

    nop

    move-wide/from16 v31, v0

    nop

    nop

    nop

    iget v0, v3, Levq;->s:I

    nop

    nop

    nop

    nop

    iget v1, v3, Levq;->t:I

    nop

    nop

    iget-object v3, v3, Levq;->u:Ljava/lang/String;

    nop

    const/high16 v36, 0x80000

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v4

    nop

    move-object v4, v15

    nop

    nop

    nop

    move-object/from16 v37, v15

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v15, v16

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v17, v19

    nop

    move/from16 v19, v2

    nop

    move/from16 v33, v0

    nop

    nop

    nop

    nop

    move/from16 v34, v1

    nop

    nop

    nop

    nop

    move-object/from16 v35, v3

    nop

    invoke-direct/range {v4 .. v36}, Levq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lepu;Lepu;JJJLeps;IIJJJJZIIJIILjava/lang/String;I)V

    move-object/from16 v0, p2

    nop

    nop

    nop

    nop

    move-object/from16 v1, v37

    nop

    nop

    nop

    nop

    iput-object v1, v0, Leqp;->b:Levq;

    nop

    invoke-static/range {p1 .. p1}, Lrkm;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    const-string v1, "EnqueueRunnable_KEEP"

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_d

    nop

    nop

    new-instance v2, Lerr;

    nop

    nop

    nop

    nop

    move-object/from16 v3, p0

    nop

    nop

    check-cast v3, Lese;

    nop

    nop

    invoke-direct {v2, v3, v0}, Lerr;-><init>(Lese;Ljava/util/List;)V

    iget-boolean v0, v2, Lerr;->e:Z

    nop

    if-nez v0, :cond_c

    nop

    iget-object v0, v2, Lerr;->b:Lese;

    nop

    iget-object v3, v0, Lese;->h:Lqpe;

    nop

    nop

    nop

    iget-object v3, v3, Lqpe;->e:Ljava/lang/Object;

    nop

    nop

    iget-object v0, v0, Lese;->i:Lts;

    nop

    iget-object v0, v0, Lts;->a:Ljava/lang/Object;

    nop

    nop

    new-instance v4, Lerq;

    nop

    nop

    nop

    invoke-direct {v4, v2}, Lerq;-><init>(Lerr;)V

    check-cast v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    nop

    nop

    nop

    invoke-static {v3, v1, v0, v4}, Ldwq;->i(Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;Ljava/lang/String;Ljava/util/concurrent/Executor;Luaz;)V

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_c
    invoke-static {}, Leqh;->b()V

    sget-object v0, Lerr;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already enqueued work ids ("

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lerr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    const-string v3, ", "

    nop

    nop

    nop

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    nop

    :cond_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->VOM:Ljava/lang/String;

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_12

    nop

    nop

    :goto_b
    if-eqz p2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xf

    nop

    goto/32 :goto_14

    nop

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
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    const-string v2, "WorkManager is not initialized"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    if-lez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_f
    goto/32 :goto_e

    nop

    :goto_12
    sget-object v1, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    const v0, 0x1d

    nop

    goto/32 :goto_c

    nop

    nop
.end method
