.class public final synthetic Lfuu;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lfux;

.field public final synthetic b:Lflq;

.field public final synthetic c:Lnou;


# direct methods
.method public synthetic constructor <init>(Lfux;Lflq;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfuu;->a:Lfux;

    iput-object p2, p0, Lfuu;->b:Lflq;

    iput-object p3, p0, Lfuu;->c:Lnou;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 30

    move-object/from16 v1, p0

    iget-object v8, v1, Lfuu;->a:Lfux;

    iget-object v9, v1, Lfuu;->b:Lflq;

    iget-object v10, v1, Lfuu;->c:Lnou;

    iget-object v0, v8, Lfux;->r:Lfuw;

    if-eqz v0, :cond_1

    iget-object v2, v9, Lflq;->b:Lflm;

    iget-object v3, v0, Lfuw;->a:Lflm;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lfuw;->d:Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liha;

    iget-object v2, v2, Liha;->a:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, v0, Lfuw;->b:Lftg;

    invoke-interface {v0}, Lftg;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lfux;->r:Lfuw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lfuw;->c:Lnou;

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    :goto_0
    invoke-virtual {v8}, Lfux;->e()V

    :try_start_1
    iget-object v0, v8, Lfux;->k:Lmqp;

    sget-object v2, Lfnq;->c:Lfnq;

    invoke-virtual {v0, v2}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v0

    iget-object v15, v9, Lflq;->a:Lflg;

    iget-object v2, v8, Lfux;->s:Lklx;

    iget-object v3, v15, Lflg;->a:Lkll;

    invoke-virtual {v2, v3}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v14

    new-instance v11, Llpx;

    const/4 v7, 0x1

    move-object v2, v11

    move-object v3, v8

    move-object v4, v9

    move-object v5, v0

    move-object v6, v14

    invoke-direct/range {v2 .. v7}, Llpx;-><init>(Lfux;Lflq;Lmqp;Lfuz;I)V

    iget-object v2, v8, Lfux;->c:Ljuh;

    invoke-static {v10, v11, v2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    iget-object v3, v8, Lfux;->i:Lhkc;

    invoke-interface {v3}, Lhkc;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;

    iget-object v4, v15, Lflg;->c:Lkaf;

    new-instance v5, Lfvx;

    iget-object v6, v8, Lfux;->g:Landroid/util/DisplayMetrics;

    iget-object v7, v8, Lfux;->f:Lgvu;

    iget-object v10, v8, Lfux;->u:Llpg;

    iget-object v13, v8, Lfux;->l:Lika;

    iget-object v12, v8, Lfux;->e:Lgcg;

    iget-object v11, v8, Lfux;->m:Ldbf;

    iget-object v1, v8, Lfux;->n:Lmqp;

    move-object/from16 v26, v9

    iget-object v9, v8, Lfux;->o:Lcgi;

    move-object/from16 v27, v4

    iget-object v4, v8, Lfux;->b:Lnou;

    move-object/from16 v28, v3

    iget-object v3, v8, Lfux;->p:Lfuj;

    const/16 v25, 0x0

    move-object/from16 v19, v11

    move-object v11, v5

    move-object/from16 v18, v12

    move-object v12, v15

    move-object/from16 v17, v13

    move-object v13, v2

    move-object/from16 v29, v2

    move-object v2, v14

    move-object v14, v6

    move-object v6, v15

    move-object v15, v7

    move-object/from16 v16, v10

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v9

    move-object/from16 v23, v4

    move-object/from16 v24, v3

    invoke-direct/range {v11 .. v25}, Lfvx;-><init>(Lflg;Lnou;Landroid/util/DisplayMetrics;Lgvu;Llpg;Lika;Ljvs;Ldbf;Lmqp;Lmqp;Lcgi;Lnou;Lfuj;[B)V

    sget-object v1, Lhka;->b:Lhka;

    move-object/from16 v3, v28

    invoke-virtual {v3, v1}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v1, v3, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->a:Lkbc;

    const-string v4, "OneCamera#create"

    invoke-interface {v1, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v6, Lflg;->a:Lkll;

    iget-object v1, v8, Lfux;->t:Lgre;

    invoke-virtual {v1}, Lgre;->c()Lkad;

    move-result-object v1

    iget-object v4, v8, Lfux;->v:Lgkr;

    iget-object v6, v8, Lfux;->s:Lklx;

    iget-object v7, v8, Lfux;->q:Ldhi;

    const-string v9, "OneCameraDependencies#new"

    iget-object v10, v4, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v10, v9}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v9, Lbkb;

    invoke-direct {v9, v2}, Lbkb;-><init>(Lfuz;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v2}, Lklw;->i()Lkll;

    move-result-object v2

    iget-object v10, v4, Lgkr;->a:Ljava/lang/Object;

    invoke-static {v2, v6, v10, v7}, Lgky;->h(Lkll;Lklj;Lfuj;Ldhi;)Lfuz;

    move-result-object v2

    iget-object v6, v4, Lgkr;->b:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lfme;

    iget-object v7, v7, Lfme;->b:Ldbf;

    invoke-virtual {v7}, Ldbf;->d()Lklv;

    move-result-object v7

    check-cast v6, Lfme;

    invoke-virtual {v6, v7}, Lfme;->d(Lklv;)I

    move-result v6

    invoke-static {v6}, Linb;->F(I)Ljzr;

    move-result-object v6

    move-object/from16 v7, v27

    iget v10, v7, Lkaf;->a:I

    iget v11, v7, Lkaf;->b:I

    invoke-static {v10, v11}, Ljzr;->k(II)Ljzr;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljzr;->m(Ljzr;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v6, v7}, Ljzr;->e(Lkaf;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v6}, Lkaf;->g(Landroid/graphics/Rect;)Lkaf;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    const/16 v7, 0x23

    invoke-static {v7}, Lcom/agc/LensSettings;->getViewfinderFormat(I)I

    move-result v7

    invoke-static {v2, v6, v7}, Lgdd;->a(Lkli;Lkaf;I)Lgdd;

    move-result-object v2
    :try_end_2
    .catch Lgdc; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v6, Lbkb;

    invoke-direct {v6, v2}, Lbkb;-><init>(Lgdd;)V

    iget-object v2, v4, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v2, v9, v5, v6}, Levo;->C(Lbkb;Lfvx;Lbkb;)Lfwm;

    move-result-object v2

    iget-object v4, v4, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v4}, Lkbc;->f()V

    iget-object v4, v5, Lfvx;->f:Ljava/lang/Object;

    sget-object v5, Lika;->g:Lika;

    if-ne v4, v5, :cond_3

    new-instance v4, Less;

    move-object v5, v2

    check-cast v5, Lesn;

    iget-object v5, v5, Lesn;->a:Lesh;

    check-cast v2, Lesn;

    iget-object v2, v2, Lesn;->b:Lesn;

    invoke-direct {v4, v5, v2}, Less;-><init>(Lesh;Lesn;)V

    goto :goto_2

    :cond_3
    sget-object v5, Lika;->m:Lika;

    if-ne v4, v5, :cond_4

    new-instance v4, Lesp;

    move-object v5, v2

    check-cast v5, Lesn;

    iget-object v5, v5, Lesn;->a:Lesh;

    check-cast v2, Lesn;

    iget-object v2, v2, Lesn;->b:Lesn;

    invoke-direct {v4, v5, v2}, Lesp;-><init>(Lesh;Lesn;)V

    goto :goto_2

    :cond_4
    sget-object v5, Lika;->l:Lika;

    if-ne v4, v5, :cond_5

    new-instance v4, Lesq;

    move-object v5, v2

    check-cast v5, Lesn;

    iget-object v5, v5, Lesn;->a:Lesh;

    check-cast v2, Lesn;

    iget-object v2, v2, Lesn;->b:Lesn;

    invoke-direct {v4, v5, v2}, Lesq;-><init>(Lesh;Lesn;)V

    goto :goto_2

    :cond_5
    sget-object v5, Lika;->h:Lika;

    if-ne v4, v5, :cond_6

    new-instance v4, Leso;

    move-object v5, v2

    check-cast v5, Lesn;

    iget-object v5, v5, Lesn;->a:Lesh;

    check-cast v2, Lesn;

    iget-object v2, v2, Lesn;->b:Lesn;

    invoke-direct {v4, v5, v2}, Leso;-><init>(Lesh;Lesn;)V

    goto :goto_2

    :cond_6
    new-instance v4, Lesr;

    move-object v5, v2

    check-cast v5, Lesn;

    iget-object v5, v5, Lesn;->a:Lesh;

    check-cast v2, Lesn;

    iget-object v2, v2, Lesn;->b:Lesn;

    invoke-direct {v4, v5, v2}, Lesr;-><init>(Lesh;Lesn;)V

    :goto_2
    invoke-interface {v4}, Lfti;->a()Lftg;

    move-result-object v2

    sget-object v4, Lhka;->c:Lhka;

    invoke-virtual {v3, v4}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v4, v3, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->a:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    invoke-interface {v2}, Lftg;->h()Ljuf;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljuf;->d(Lkad;)V

    invoke-interface {v2}, Lftg;->h()Ljuf;

    move-result-object v4

    new-instance v5, Leym;

    const/16 v6, 0xd

    move-object/from16 v7, v29

    invoke-direct {v5, v7, v6}, Leym;-><init>(Lnou;I)V

    invoke-virtual {v4, v5}, Ljuf;->d(Lkad;)V

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Lftg;->h()Ljuf;

    move-result-object v4

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liot;

    invoke-virtual {v4, v0}, Ljuf;->d(Lkad;)V

    :cond_7
    invoke-interface {v2}, Lftg;->i()Lmbe;

    move-result-object v0

    iget-object v0, v0, Lmbe;->b:Ljava/lang/Object;

    new-instance v4, Lcig;

    const/16 v5, 0x14

    invoke-direct {v4, v8, v5}, Lcig;-><init>(Lfux;I)V

    sget-object v5, Lnnv;->a:Lnnv;

    invoke-static {v0, v4, v5}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    sget-object v0, Lhka;->d:Lhka;

    invoke-virtual {v3, v0}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v0, v3, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->a:Lkbc;

    const-string v4, "OneCamera#start"

    invoke-interface {v0, v4}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;->b:Lkbf;

    invoke-interface {v2}, Lftg;->e()Lnou;

    move-result-object v0

    const-class v4, Ljava/lang/Throwable;

    new-instance v5, Lcpq;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v1, v6}, Lcpq;-><init>(Lftg;Lkad;I)V

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-static {v0, v4, v5, v6}, Lnml;->j(Lnou;Ljava/lang/Class;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v4, Lfxj;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v3, v2, v5}, Lfxj;-><init>(Lkad;Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;Lftg;I)V

    iget-object v1, v8, Lfux;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v4, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    move-object/from16 v1, v26

    iget-object v1, v1, Lflq;->b:Lflm;

    if-eqz v2, :cond_8

    new-instance v3, Lfuw;

    invoke-direct {v3, v1, v2, v0, v7}, Lfuw;-><init>(Lflm;Lftg;Lnou;Ljava/util/concurrent/Future;)V

    iput-object v3, v8, Lfux;->r:Lfuw;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    iget-object v0, v8, Lfux;->r:Lfuw;

    iget-object v0, v0, Lfuw;->c:Lnou;

    goto :goto_3

    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null camera"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "Unable to access OneCamera."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    :goto_3
    return-object v0
.end method
