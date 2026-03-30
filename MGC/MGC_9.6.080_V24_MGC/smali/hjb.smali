.class public final Lhjb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final b:Lhis;

.field private final c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lrss;

.field private f:Lrss;

.field private final g:Lmjv;

.field private final h:Lnoz;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()Z
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget p0, p0, Lnoz;->a:F

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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
    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lnoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    iget-object p0, p0, Lhjb;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_10
    iget-object v0, p0, Lhjb;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const v0, 0xc

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

    nop

    :goto_14
    if-gtz p0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmpl-float p0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v0, 0x41700000    # 15.0f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const v1, 0x14

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const v0, 0x1c

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

    nop

    :goto_5
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

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

    :goto_7
    sput-object v0, Lhjb;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

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
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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
.end method

.method public constructor <init>(Lhis;Lmjv;Lhoh;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lhma;->e:Lhmn;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhjb;->h:Lnoz;

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

    :goto_5
    iput-object p2, p0, Lhjb;->g:Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lhjb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_c
    const v0, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lhjb;->e:Lrss;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p3, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lhjb;->f:Lrss;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p1, p2, v0}, Lnoz;-><init>(F[B)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lhjb;->b:Lhis;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p1, Lnoz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean p1, p0, Lhjb;->c:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const p2, 0x3ca3d70a    # 0.02f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lhdu;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_9
    const v0, 0x9

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lhis;->a()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lhjb;->b:Lhis;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    iget-object v0, v0, Llsc;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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

    :goto_12
    return p0

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    nop

    :goto_15
    invoke-virtual {v0}, Libn;->b()Llsc;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    check-cast v0, Libn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    goto :goto_13

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v1, v0}, Lnoz;->b([Llsf;Landroid/graphics/Rect;)Z

    move-result p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Llsc;->q:[Llsf;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lhjb;->h:Lnoz;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lhjb;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method

.method final declared-synchronized b()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    iput-object v0, p0, Lhjb;->e:Lrss;

    nop

    nop

    nop

    iget-object v0, p0, Lhjb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    invoke-direct {p0}, Lhjb;->19e596a3e324281407eb5c11093c0152m()Z

    move-result v0

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhjb;->g:Lmjv;

    nop

    nop

    sget-object v1, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    sget-object v2, Lskc;->U:Lskc;

    nop

    nop

    nop

    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_0
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v3, Lskd;

    nop

    nop

    iget v2, v2, Lskc;->aG:I

    nop

    nop

    nop

    nop

    iput v2, v3, Lskd;->f:I

    nop

    nop

    nop

    nop

    iget v2, v3, Lskd;->b:I

    nop

    nop

    nop

    or-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    iput v2, v3, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lsjk;->a:Lsjk;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_1

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_1
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v3, Lsjk;

    nop

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    iput v4, v3, Lsjk;->c:I

    nop

    nop

    iget v4, v3, Lsjk;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x1

    nop

    iput v4, v3, Lsjk;->b:I

    nop

    nop

    nop

    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    if-nez v3, :cond_2

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_2
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lskd;

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lsjk;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lskd;->W:Lsjk;

    nop

    nop

    nop

    nop

    iget v2, v3, Lskd;->c:I

    nop

    nop

    nop

    nop

    const/high16 v4, 0x4000000

    nop

    nop

    nop

    or-int/2addr v2, v4

    nop

    iput v2, v3, Lskd;->c:I

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lmjv;->J(Ltkb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized c()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhjb;->g:Lmjv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lmjv;->g()V

    iget-object v0, p0, Lhjb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

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

    goto/32 :goto_a

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    const v1, 0xf

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method final declared-synchronized d(F)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Lnoz;

    nop

    nop

    nop

    invoke-direct {p0}, Lhjb;->d5484163cd8d335e6b17663474ff5f2bm()Z

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-direct {v0, p1, v1}, Lnoz;-><init>(F[B)V

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lhjb;->f:Lrss;

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

    :goto_1
    const v0, 0x7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    return-void

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    iput-object v0, p0, Lhjb;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhjb;->f:Lrss;

    nop

    nop

    nop

    iget-object v0, p0, Lhjb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x19

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public final declared-synchronized f()Z
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lhjb;->c:Z

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    invoke-direct {p0}, Lhjb;->d5484163cd8d335e6b17663474ff5f2bm()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lhjb;->19e596a3e324281407eb5c11093c0152m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhjb;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    iget-object v2, p0, Lhjb;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    sub-long/2addr v0, v2

    nop

    nop

    const-wide/16 v2, 0x7d0

    nop

    nop

    nop

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v0, Lhjb;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

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

    :goto_4
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :cond_3
    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    monitor-exit p0

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

    :goto_10
    monitor-exit p0

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

    nop

    :goto_11
    throw v0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop
.end method
