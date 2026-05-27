.class public final Llkf;
.super Llkj;

# interfaces
.implements Llha;
.implements Llil;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Landroid/app/Application;

.field private final c:Llhe;

.field private final d:Llka;

.field private final e:Lljy;

.field private final f:Landroid/util/ArrayMap;

.field private final g:Loiw;

.field private final h:Llio;

.field private final i:Lmrl;

.field private final j:Loiw;

.field private final k:Lmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Llkf;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Llij;Landroid/content/Context;Llhe;Logd;Lljy;Loiw;Loiw;Ljava/util/concurrent/Executor;Logd;Llio;Loiw;Loiw;Z)V
    .locals 1

    invoke-direct {p0}, Llkj;-><init>()V

    new-instance p12, Landroid/util/ArrayMap;

    invoke-direct {p12}, Landroid/util/ArrayMap;-><init>()V

    iput-object p12, p0, Llkf;->f:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    invoke-virtual {p1, p8, p4, p7}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-result-object p1

    iput-object p1, p0, Llkf;->k:Lmap;

    check-cast p2, Landroid/app/Application;

    iput-object p2, p0, Llkf;->b:Landroid/app/Application;

    iput-object p3, p0, Llkf;->c:Llhe;

    iput-object p6, p0, Llkf;->g:Loiw;

    iput-object p5, p0, Llkf;->e:Lljy;

    iput-object p10, p0, Llkf;->h:Llio;

    new-instance p1, Ldkg;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p11, p2}, Ldkg;-><init>(Llkf;Loiw;I)V

    invoke-static {p1}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Llkf;->i:Lmrl;

    iput-object p11, p0, Llkf;->j:Loiw;

    new-instance p1, Llkb;

    invoke-direct {p1, p12}, Llkb;-><init>(Landroid/util/ArrayMap;)V

    if-eqz p13, :cond_0

    new-instance p2, Llkd;

    invoke-direct {p2, p1, p9}, Llkd;-><init>(Landroid/view/Window$OnFrameMetricsAvailableListener;Logd;)V

    goto :goto_0

    :cond_0
    new-instance p2, Llke;

    invoke-direct {p2, p1, p9}, Llke;-><init>(Landroid/view/Window$OnFrameMetricsAvailableListener;Logd;)V

    :goto_0
    iput-object p2, p0, Llkf;->d:Llka;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lnou;
    .locals 11

    invoke-static {p1}, Llkc;->a(Landroid/app/Activity;)Llkc;

    move-result-object p1

    iget-object v0, p0, Llkf;->k:Lmap;

    iget-object v0, v0, Lmap;->h:Ljava/lang/Object;

    check-cast v0, Llmy;

    iget-boolean v1, v0, Llmy;->c:Z

    iget-object v0, v0, Llmy;->b:Llnc;

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Llnc;->c()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Llkf;->f:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llkf;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llkg;

    iget-object v2, p0, Llkf;->f:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llkf;->d:Llka;

    invoke-interface {v2}, Llka;->d()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    sget-object v0, Llkf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Measurement not found: %s"

    const/16 v2, 0x11a5

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    sget-object p1, Lnor;->a:Lnou;

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p1}, Llkc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v5, "J<%s>"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x1505a658

    invoke-static {v2, v5}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v2, p0, Llkf;->j:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llkl;

    iget-object v2, v2, Llkl;->b:Lnxa;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llkk;

    iget v6, v5, Llkk;->a:I

    invoke-static {v6}, Lljr;->a(I)I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v6, v6, -0x1

    packed-switch v6, :pswitch_data_0

    iget-object v5, v5, Llkk;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    iget v6, v1, Llkg;->n:I

    goto :goto_1

    :pswitch_1
    iget v6, v1, Llkg;->l:I

    goto :goto_1

    :pswitch_2
    iget v6, v1, Llkg;->k:I

    goto :goto_1

    :pswitch_3
    iget v6, v1, Llkg;->j:I

    goto :goto_1

    :pswitch_4
    iget v6, v1, Llkg;->i:I

    goto :goto_1

    :pswitch_5
    iget v6, v1, Llkg;->g:I

    goto :goto_1

    :pswitch_6
    const/4 v6, 0x0

    :goto_1
    iget-object v5, v5, Llkk;->b:Ljava/lang/String;

    const-string v7, "%EVENT_NAME%"

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    :goto_2
    iget v0, v1, Llkg;->i:I

    if-nez v0, :cond_5

    sget-object p1, Lnor;->a:Lnou;

    goto/16 :goto_7

    :cond_5
    iget-object v0, p0, Llkf;->j:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkl;

    iget-boolean v0, v0, Llkl;->c:Z

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget v0, v1, Llkg;->n:I

    int-to-long v5, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x9

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gtz v0, :cond_7

    iget v0, v1, Llkg;->g:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Llkf;->h:Llio;

    iget-object v2, p0, Llkf;->i:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Llio;->a(Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object v0, v1, Llkg;->c:Lkrn;

    invoke-interface {v0}, Lkrn;->b()J

    move-result-wide v5

    iget-wide v7, v1, Llkg;->d:J

    sub-long/2addr v5, v7

    sget-object v0, Lozn;->n:Lozn;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8
    long-to-int v2, v5

    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lozn;

    iget v7, v6, Lozn;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Lozn;->a:I

    add-int/2addr v2, v4

    iput v2, v6, Lozn;->f:I

    iget v2, v1, Llkg;->g:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_9
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lozn;

    iget v7, v6, Lozn;->a:I

    or-int/2addr v7, v4

    iput v7, v6, Lozn;->a:I

    iput v2, v6, Lozn;->b:I

    iget v2, v1, Llkg;->i:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_a
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lozn;

    iget v7, v6, Lozn;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Lozn;->a:I

    iput v2, v6, Lozn;->c:I

    iget v2, v1, Llkg;->j:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_b
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lozn;

    iget v7, v6, Lozn;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lozn;->a:I

    iput v2, v6, Lozn;->d:I

    iget v2, v1, Llkg;->l:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_c
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lozn;

    iget v7, v6, Lozn;->a:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lozn;->a:I

    iput v2, v6, Lozn;->g:I

    iget v2, v1, Llkg;->n:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_d
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lozn;

    iget v7, v6, Lozn;->a:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v6, Lozn;->a:I

    iput v2, v6, Lozn;->h:I

    iget v2, v1, Llkg;->k:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_e
    iget-object v5, v0, Lnwn;->b:Lnws;

    check-cast v5, Lozn;

    iget v6, v5, Lozn;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Lozn;->a:I

    iput v2, v5, Lozn;->e:I

    iget v2, v1, Llkg;->o:I

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_17

    sget-object v5, Llkg;->b:[I

    iget-object v6, v1, Llkg;->f:[I

    sget-object v7, Lozr;->c:Lozr;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    const/4 v8, 0x0

    :goto_4
    const/16 v9, 0x34

    if-ge v8, v9, :cond_12

    aget v9, v5, v8

    if-le v9, v2, :cond_f

    invoke-virtual {v7, v3}, Lnwn;->ay(I)V

    add-int/2addr v2, v4

    invoke-virtual {v7, v2}, Lnwn;->ax(I)V

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozr;

    goto :goto_5

    :cond_f
    aget v9, v6, v8

    if-gtz v9, :cond_10

    if-lez v8, :cond_11

    add-int/lit8 v10, v8, -0x1

    aget v10, v6, v10

    if-lez v10, :cond_11

    :cond_10
    invoke-virtual {v7, v9}, Lnwn;->ay(I)V

    aget v9, v5, v8

    invoke-virtual {v7, v9}, Lnwn;->ax(I)V

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_12
    const/16 v5, 0x33

    aget v5, v6, v5

    if-lez v5, :cond_13

    add-int/2addr v2, v4

    invoke-virtual {v7, v2}, Lnwn;->ax(I)V

    invoke-virtual {v7, v3}, Lnwn;->ay(I)V

    :cond_13
    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozr;

    :goto_5
    iget-object v5, v0, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_14
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lozn;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v6, Lozn;->m:Lozr;

    iget v2, v6, Lozn;->a:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v6, Lozn;->a:I

    iget v2, v1, Llkg;->h:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_15
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lozn;

    iget v7, v6, Lozn;->a:I

    or-int/lit16 v7, v7, 0x200

    iput v7, v6, Lozn;->a:I

    iput v2, v6, Lozn;->k:I

    iget v2, v1, Llkg;->m:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_16
    iget-object v5, v0, Lnwn;->b:Lnws;

    check-cast v5, Lozn;

    iget v6, v5, Lozn;->a:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Lozn;->a:I

    iput v2, v5, Lozn;->l:I

    goto :goto_6

    :cond_17
    :goto_6
    const/16 v2, 0x1c

    if-ge v3, v2, :cond_1f

    iget-object v5, v1, Llkg;->e:[I

    aget v5, v5, v3

    if-lez v5, :cond_1e

    sget-object v5, Lozm;->e:Lozm;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v6, v1, Llkg;->e:[I

    aget v6, v6, v3

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_18
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lozm;

    iget v9, v8, Lozm;->a:I

    or-int/2addr v9, v4

    iput v9, v8, Lozm;->a:I

    iput v6, v8, Lozm;->b:I

    sget-object v6, Llkg;->a:[I

    aget v6, v6, v3

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_19
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lozm;

    iget v9, v8, Lozm;->a:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v8, Lozm;->a:I

    iput v6, v8, Lozm;->c:I

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v2, :cond_1b

    sget-object v2, Llkg;->a:[I

    aget v2, v2, v6

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_1a
    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Lozm;

    iget v7, v6, Lozm;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lozm;->a:I

    iput v2, v6, Lozm;->d:I

    :cond_1b
    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1c
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lozn;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v5

    check-cast v5, Lozm;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lozn;->j:Lnxa;

    invoke-interface {v6}, Lnxa;->c()Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-static {v6}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v6

    iput-object v6, v2, Lozn;->j:Lnxa;

    :cond_1d
    iget-object v2, v2, Lozn;->j:Lnxa;

    invoke-interface {v2, v5}, Lnxa;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_1f
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozn;

    sget-object v1, Lozv;->u:Lozv;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_20
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lozv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v2, Lozv;->j:Lozn;

    iget v0, v2, Lozv;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v2, Lozv;->a:I

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozv;

    iget-object v1, p0, Llkf;->k:Lmap;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v2

    invoke-virtual {v2, v0}, Llie;->e(Lozv;)V

    const/4 v0, 0x0

    iput-object v0, v2, Llie;->d:Ljava/lang/Object;

    const-string v0, "Activity"

    iput-object v0, v2, Llie;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Llkc;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Llie;->b:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Llie;->c(Z)V

    invoke-virtual {v2}, Llie;->a()Llif;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmap;->b(Llif;)Lnou;

    move-result-object p1

    goto :goto_7

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_21
    sget-object p1, Lnor;->a:Lnou;

    :goto_7
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ab()V
    .locals 2

    iget-object v0, p0, Llkf;->c:Llhe;

    iget-object v1, p0, Llkf;->d:Llka;

    invoke-virtual {v0, v1}, Llhe;->a(Llhd;)V

    iget-object v0, p0, Llkf;->c:Llhe;

    iget-object v1, p0, Llkf;->e:Lljy;

    invoke-virtual {v0, v1}, Llhe;->a(Llhd;)V

    return-void
.end method

.method public synthetic b(Loiw;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llkl;

    iget-object p1, p1, Llkl;->a:Ljava/lang/String;

    iget-object v0, p0, Llkf;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%PACKAGE_NAME%"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/app/Activity;)V
    .locals 4

    invoke-static {p1}, Llkc;->a(Landroid/app/Activity;)Llkc;

    move-result-object p1

    iget-object v0, p0, Llkf;->k:Lmap;

    invoke-virtual {p1}, Llkc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmap;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Llkf;->f:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llkf;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x19

    if-lt v1, v2, :cond_1

    sget-object v1, Llkf;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x11a8

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Too many concurrent measurements, ignoring %s"

    invoke-interface {v1, v2, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Llkf;->f:Landroid/util/ArrayMap;

    iget-object v2, p0, Llkf;->g:Loiw;

    check-cast v2, Llkh;

    invoke-virtual {v2}, Llkh;->a()Llkg;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llkg;

    if-eqz v1, :cond_2

    iget-object v2, p0, Llkf;->f:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Llkf;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x11a7

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "measurement already started: %s"

    invoke-interface {v1, v2, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Llkf;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Llkf;->d:Llka;

    invoke-interface {v1}, Llka;->c()V

    :cond_3
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "J<%s>"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Llkc;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x1505a658

    invoke-static {p1, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Llkf;->f:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Llkf;->f:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
