.class public final synthetic Ldeq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldes;

.field public final synthetic b:Lmdz;


# direct methods
.method public synthetic constructor <init>(Ldes;Lmdz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldeq;->a:Ldes;

    iput-object p2, p0, Ldeq;->b:Lmdz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Ldeq;->a:Ldes;

    iget-object v2, v1, Ldeq;->b:Lmdz;

    invoke-static {}, Ldef;->a()Ldee;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ldee;->c(J)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, v2, Lmdz;->a:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_10

    iget-object v5, v2, Lmdz;->b:Lmej;

    if-nez v5, :cond_0

    sget-object v5, Lmej;->b:Lmej;

    :cond_0
    iget-object v5, v5, Lmej;->a:Lnxa;

    invoke-interface {v5}, Lnxa;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v5, v2, Lmdz;->b:Lmej;

    if-nez v5, :cond_2

    sget-object v5, Lmej;->b:Lmej;

    :cond_2
    iget-object v5, v5, Lmej;->a:Lnxa;

    invoke-interface {v5}, Lnxa;->size()I

    iget-object v5, v0, Ldes;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    :try_start_0
    iget-object v9, v0, Ldes;->h:Lkbc;

    const-string v10, "camera_vkp_fetch_repeated"

    invoke-interface {v9, v10}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v2, Lmdz;->b:Lmej;

    if-nez v11, :cond_4

    sget-object v11, Lmej;->b:Lmej;

    :cond_4
    iget-object v11, v11, Lmej;->a:Lnxa;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmeh;

    iget v13, v12, Lmeh;->a:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_8

    iget-object v13, v0, Ldes;->j:Landroid/util/LruCache;

    iget-object v14, v12, Lmeh;->c:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lddo;

    if-nez v13, :cond_5

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v14, Lddn;

    invoke-direct {v14, v13}, Lddn;-><init>(Lddo;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Lddn;->g(J)V

    iget-object v7, v0, Ldes;->b:Ldeg;

    iget-object v8, v12, Lmeh;->d:Lnxa;

    invoke-interface {v8}, Lnxa;->size()I

    move-result v8

    if-eq v8, v6, :cond_6

    sget-object v8, Lmpx;->a:Lmpx;

    move-object/from16 v18, v11

    goto :goto_3

    :cond_6
    iget-object v8, v12, Lmeh;->d:Lnxa;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v16, 0x1

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v13, 0x1

    const/4 v15, 0x1

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    check-cast v8, Lmeg;

    move-object/from16 v18, v11

    iget v11, v8, Lmeg;->a:I

    int-to-float v11, v11

    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    iget v11, v8, Lmeg;->a:I

    int-to-float v11, v11

    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v11, v8, Lmeg;->b:I

    int-to-float v11, v11

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v8, v8, Lmeg;->b:I

    int-to-float v8, v8

    invoke-static {v8, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move-object/from16 v11, v18

    move-object/from16 v8, v19

    goto :goto_2

    :cond_7
    move-object/from16 v18, v11

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v6, v1, v13, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v8}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v8

    :goto_3
    iget-object v1, v7, Ldeg;->k:Loxq;

    iget v6, v7, Ldeg;->h:I

    iget v7, v7, Ldeg;->i:I

    invoke-static {v8, v1, v6, v7}, Ldez;->f(Lmqp;Loxq;II)Lddl;

    move-result-object v1

    invoke-virtual {v14, v1}, Lddn;->d(Lddl;)V

    invoke-virtual {v14}, Lddn;->a()Lddo;

    move-result-object v1

    iget-object v6, v0, Ldes;->j:Landroid/util/LruCache;

    iget-object v7, v12, Lmeh;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v11, v18

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v18, v11

    move-object/from16 v1, p0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v1, v0, Ldes;->h:Lkbc;

    const-string v6, "camera_vkp_semantic_result_convert"

    invoke-interface {v1, v6}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, v0, Ldes;->b:Ldeg;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    iget v7, v1, Ldeg;->i:I

    if-eqz v7, :cond_d

    iget v7, v1, Ldeg;->h:I

    if-eqz v7, :cond_d

    iget-object v7, v1, Ldeg;->d:Lddk;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmeh;

    iget v12, v11, Lmeh;->b:I

    invoke-static {v12}, Lkwp;->r(I)I

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :cond_a
    add-int/lit8 v12, v12, -0x2

    const/4 v13, 0x1

    shl-int v12, v13, v12

    iget-object v14, v11, Lmeh;->c:Ljava/lang/String;

    invoke-static {v14, v12}, Lcom/google/android/libraries/barhopper/Barhopper;->parseRawValue(Ljava/lang/String;I)Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v11, Lmeh;->d:Lnxa;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmeg;

    new-instance v13, Landroid/graphics/Point;

    move-object/from16 v18, v9

    iget v9, v15, Lmeg;->a:I

    iget v15, v15, Lmeg;->b:I

    invoke-direct {v13, v9, v15}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v18

    const/4 v13, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v18, v9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/graphics/Point;

    invoke-interface {v14, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/graphics/Point;

    iput-object v9, v12, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v18

    goto :goto_4

    :cond_c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/libraries/barhopper/Barcode;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/libraries/barhopper/Barcode;

    iget v9, v1, Ldeg;->h:I

    iget v1, v1, Ldeg;->i:I

    invoke-virtual {v7, v8, v9, v1}, Lddk;->a([Lcom/google/android/libraries/barhopper/Barcode;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_d
    iget-object v1, v0, Ldes;->h:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lluc;

    iget-object v7, v0, Ldes;->k:Lcvr;

    invoke-virtual {v7, v6}, Lcvr;->l(Lluc;)Lmqp;

    move-result-object v7

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v0, Ldes;->h:Lkbc;

    const-string v9, "camera_vkp_barcode_convert"

    invoke-interface {v8, v9}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v8, v0, Ldes;->b:Ldeg;

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v8, v6, v11, v12}, Ldeg;->a(Lluc;J)Lddo;

    move-result-object v7

    iget-object v8, v0, Ldes;->h:Lkbc;

    invoke-interface {v8}, Lkbc;->f()V

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lluc;->d()Lmqp;

    move-result-object v8

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v0, Ldes;->j:Landroid/util/LruCache;

    invoke-virtual {v6}, Lluc;->d()Lmqp;

    move-result-object v6

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/barhopper/Barcode;

    iget-object v6, v6, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    invoke-virtual {v8, v6, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_f
    invoke-static {v10}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Ldes;->b(Z)V

    goto :goto_8

    :catchall_0
    move-exception v0

    invoke-static {v5}, Ldes;->b(Z)V

    throw v0

    :cond_10
    :goto_7
    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    :goto_8
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v1, v2, Lmdz;->a:I

    and-int/lit16 v1, v1, 0x400

    const/4 v5, 0x0

    if-eqz v1, :cond_19

    iget-object v1, v2, Lmdz;->e:Lmdk;

    if-nez v1, :cond_11

    sget-object v1, Lmdk;->c:Lmdk;

    :cond_11
    iget v6, v1, Lmdk;->a:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_18

    iget-object v6, v0, Ldes;->k:Lcvr;

    invoke-static {}, Lluc;->C()Llua;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iput-object v8, v7, Llua;->c:Ljava/lang/Float;

    sget-object v8, Lltv;->w:Lltv;

    invoke-virtual {v7, v8}, Llua;->h(Lltv;)V

    iget-object v8, v0, Ldes;->g:Landroid/content/Context;

    const v9, 0x7f14046f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Llud;->a(Ljava/lang/String;)Llud;

    move-result-object v8

    iput-object v8, v7, Llua;->b:Llud;

    invoke-virtual {v7}, Llua;->a()Lluc;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcvr;->l(Lluc;)Lmqp;

    move-result-object v6

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, v0, Ldes;->b:Ldeg;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v1, v1, Lmdk;->b:Lnua;

    if-nez v1, :cond_12

    sget-object v1, Lnua;->b:Lnua;

    :cond_12
    iget-object v6, v1, Lnua;->a:Lnuk;

    if-nez v6, :cond_13

    sget-object v6, Lnuk;->b:Lnuk;

    :cond_13
    iget-object v6, v6, Lnuk;->a:Lnxa;

    invoke-interface {v6}, Lnxa;->size()I

    move-result v6

    sget-object v8, Lmpx;->a:Lmpx;

    iget-object v12, v7, Ldeg;->g:Ldhi;

    sget-object v13, Ldht;->B:Ldhj;

    invoke-interface {v12, v13}, Ldhi;->l(Ldhj;)Z

    move-result v12

    const/4 v13, 0x3

    if-nez v12, :cond_14

    const/4 v12, 0x1

    goto :goto_9

    :cond_14
    iget-object v12, v7, Ldeg;->j:Lmrl;

    invoke-interface {v12}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v12, 0x3

    goto :goto_9

    :cond_15
    const/4 v12, 0x0

    :goto_9
    const/4 v14, 0x4

    if-ne v6, v14, :cond_17

    if-eqz v12, :cond_17

    invoke-static {}, Lddo;->a()Lddn;

    move-result-object v6

    iget-object v8, v7, Ldeg;->c:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lddn;->a:Ljava/lang/String;

    iput v12, v6, Lddn;->e:I

    iget-object v8, v7, Ldeg;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-ne v12, v13, :cond_16

    const v9, 0x7f080317

    goto :goto_a

    :cond_16
    const v9, 0x7f080318

    :goto_a
    invoke-virtual {v8, v9, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v6, Lddn;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v10, v11}, Lddn;->f(J)V

    iput v13, v6, Lddn;->f:I

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v6, Lddn;->d:Lmqp;

    iget-object v1, v7, Ldeg;->e:Lkrf;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lddn;->g(J)V

    invoke-virtual {v6}, Lddn;->a()Lddo;

    move-result-object v1

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v8

    goto :goto_b

    :cond_17
    :goto_b
    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lddo;

    invoke-static {v1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v1

    goto :goto_c

    :cond_18
    sget-object v1, Lmyu;->a:Lmvv;

    goto :goto_c

    :cond_19
    sget-object v1, Lmyu;->a:Lmvv;

    :goto_c
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v6, v2, Lmdz;->a:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1c

    iget-object v6, v2, Lmdz;->c:Lmeq;

    if-nez v6, :cond_1a

    sget-object v6, Lmeq;->b:Lmeq;

    :cond_1a
    iget-object v6, v6, Lmeq;->a:Lnxa;

    sget-object v7, Ldeo;->a:Ldeo;

    invoke-static {v6, v7}, Llyh;->H(Ljava/util/List;Lmqi;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lmum;

    invoke-direct {v7, v6}, Lmum;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmek;

    iget v8, v7, Lmek;->a:I

    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_1b

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1b

    iget-object v8, v0, Ldes;->e:Ljava/util/Map;

    iget-object v9, v7, Lmek;->c:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, v0, Ldes;->e:Ljava/util/Map;

    iget-object v9, v7, Lmek;->c:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    if-eqz v8, :cond_1b

    iget v9, v7, Lmek;->b:F

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v9, v8

    if-lez v8, :cond_1b

    iget-object v8, v7, Lmek;->c:Ljava/lang/String;

    iget v7, v7, Lmek;->b:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_1c
    iget v6, v2, Lmdz;->a:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_1d

    iget-object v2, v2, Lmdz;->d:Lmet;

    if-nez v2, :cond_1e

    sget-object v2, Lmet;->b:Lmet;

    goto :goto_e

    :cond_1d
    move-object v2, v5

    :cond_1e
    :goto_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    if-eqz v2, :cond_1f

    goto :goto_f

    :cond_1f
    return-void

    :cond_20
    :goto_f
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_21

    invoke-virtual {v3, v4}, Ldee;->b(Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_21

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lddo;

    iget-object v9, v0, Ldes;->c:Ldek;

    iget-wide v10, v8, Lddo;->a:J

    invoke-virtual {v9, v10, v11}, Ldek;->a(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_21
    new-instance v4, Lddq;

    invoke-direct {v4, v5}, Lddq;-><init>([B)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v5}, Lddq;->a(Ljava/util/Map;)V

    invoke-virtual {v4, v1}, Lddq;->a(Ljava/util/Map;)V

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v4, Lddq;->b:Lmqp;

    iget-object v1, v4, Lddq;->a:Lmwa;

    if-eqz v1, :cond_22

    new-instance v2, Lddr;

    iget-object v4, v4, Lddq;->b:Lmqp;

    invoke-direct {v2, v1, v4}, Lddr;-><init>(Lmwa;Lmqp;)V

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v3, Ldee;->a:Lmqp;

    iget-object v0, v0, Ldes;->f:Lder;

    invoke-virtual {v3}, Ldee;->a()Ldef;

    move-result-object v1

    invoke-interface {v0, v1}, Lder;->k(Ldef;)V

    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: sceneDetectionResults"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method
