.class public Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;
.super Ljava/lang/Object;

# interfaces
.implements Llnk;


# static fields
.field public static final a:Lmrl;


# instance fields
.field public volatile b:Ljbf;

.field public volatile c:Ljbf;

.field private volatile d:Llnq;

.field private volatile e:Llnz;

.field private final f:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lffe;->h:Lffe;

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->a:Lmrl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lffe;->i:Lffe;

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->f:Lmrl;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Llnj;)Lnou;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget-object v3, Llnr;->j:Llhj;

    invoke-virtual {v2, v3}, Lnwq;->e(Llhj;)V

    iget-object v4, v2, Lnwq;->l:Lnwj;

    iget-object v3, v3, Llhj;->b:Ljava/lang/Object;

    iget-object v4, v4, Lnwj;->b:Lnyw;

    invoke-virtual {v4, v3}, Lnyw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v6, "ClearcutMetricSnapshotTransmitter received a snapshot without the expected extension."

    invoke-static {v3, v6}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->e:Llnz;

    if-nez v3, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v3, v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->e:Llnz;

    if-nez v3, :cond_1

    new-instance v3, Llnz;

    new-instance v6, Ldet;

    const/16 v7, 0x12

    invoke-direct {v6, v0, v7}, Ldet;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v6}, Llnz;-><init>(Lmrl;)V

    iput-object v3, v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->e:Llnz;

    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    iget-object v6, v2, Llnj;->b:Lozv;

    if-nez v6, :cond_3

    sget-object v6, Lozv;->u:Lozv;

    :cond_3
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnwn;

    invoke-virtual {v8, v6}, Lnwn;->s(Lnws;)V

    sget-object v6, Llnz;->a:Llny;

    invoke-static {v6, v8}, Llnz;->c(Llny;Lnxx;)V

    iget-object v6, v8, Lnwn;->b:Lnws;

    check-cast v6, Lozv;

    iget-object v6, v6, Lozv;->i:Loyd;

    if-nez v6, :cond_4

    sget-object v6, Loyd;->c:Loyd;

    :cond_4
    iget v6, v6, Loyd;->a:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_a

    iget-object v6, v8, Lnwn;->b:Lnws;

    check-cast v6, Lozv;

    iget-object v6, v6, Lozv;->i:Loyd;

    if-nez v6, :cond_5

    sget-object v6, Loyd;->c:Loyd;

    :cond_5
    iget-object v6, v6, Loyd;->b:Loyc;

    if-nez v6, :cond_6

    sget-object v6, Loyc;->k:Loyc;

    :cond_6
    invoke-virtual {v6, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnwn;

    invoke-virtual {v9, v6}, Lnwn;->s(Lnws;)V

    sget-object v6, Llnz;->b:Llny;

    invoke-static {v6, v9}, Llnz;->c(Llny;Lnxx;)V

    iget-object v6, v8, Lnwn;->b:Lnws;

    check-cast v6, Lozv;

    iget-object v6, v6, Lozv;->i:Loyd;

    if-nez v6, :cond_7

    sget-object v6, Loyd;->c:Loyd;

    :cond_7
    invoke-virtual {v6, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnwn;

    invoke-virtual {v10, v6}, Lnwn;->s(Lnws;)V

    iget-object v6, v10, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_8
    iget-object v6, v10, Lnwn;->b:Lnws;

    check-cast v6, Loyd;

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v9

    check-cast v9, Loyc;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v6, Loyd;->b:Loyc;

    iget v9, v6, Loyd;->a:I

    or-int/2addr v9, v5

    iput v9, v6, Loyd;->a:I

    iget-object v6, v8, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_9
    iget-object v6, v8, Lnwn;->b:Lnws;

    check-cast v6, Lozv;

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v9

    check-cast v9, Loyd;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v6, Lozv;->i:Loyd;

    iget v9, v6, Lozv;->a:I

    or-int/lit16 v9, v9, 0x100

    iput v9, v6, Lozv;->a:I

    :cond_a
    iget-object v6, v8, Lnwn;->b:Lnws;

    check-cast v6, Lozv;

    iget-object v6, v6, Lozv;->g:Lozh;

    if-nez v6, :cond_b

    sget-object v6, Lozh;->l:Lozh;

    :cond_b
    iget v6, v6, Lozh;->a:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_1d

    iget-object v6, v8, Lnwn;->b:Lnws;

    check-cast v6, Lozv;

    iget-object v6, v6, Lozv;->g:Lozh;

    if-nez v6, :cond_c

    sget-object v6, Lozh;->l:Lozh;

    :cond_c
    iget-object v6, v6, Lozh;->h:Lnlx;

    if-nez v6, :cond_d

    sget-object v6, Lnlx;->f:Lnlx;

    :cond_d
    invoke-virtual {v6, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnwn;

    invoke-virtual {v9, v6}, Lnwn;->s(Lnws;)V

    iget-object v6, v9, Lnwn;->b:Lnws;

    check-cast v6, Lnlx;

    iget-object v6, v6, Lnlx;->d:Lnlu;

    if-nez v6, :cond_e

    sget-object v6, Lnlu;->f:Lnlu;

    :cond_e
    invoke-virtual {v3, v6}, Llnz;->a(Lnlu;)Lnlu;

    move-result-object v6

    iget-object v10, v9, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_f
    iget-object v10, v9, Lnwn;->b:Lnws;

    check-cast v10, Lnlx;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v10, Lnlx;->d:Lnlu;

    iget v6, v10, Lnlx;->a:I

    or-int/2addr v6, v5

    iput v6, v10, Lnlx;->a:I

    iget-object v6, v10, Lnlx;->e:Lnxa;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v10, v9, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_10
    iget-object v10, v9, Lnwn;->b:Lnws;

    check-cast v10, Lnlx;

    sget-object v11, Lnyi;->b:Lnyi;

    iput-object v11, v10, Lnlx;->e:Lnxa;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnlu;

    invoke-virtual {v3, v10}, Llnz;->a(Lnlu;)Lnlu;

    move-result-object v10

    iget-object v11, v9, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_11

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_11
    iget-object v11, v9, Lnwn;->b:Lnws;

    check-cast v11, Lnlx;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lnlx;->b()V

    iget-object v11, v11, Lnlx;->e:Lnxa;

    invoke-interface {v11, v10}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    iget-object v6, v9, Lnwn;->b:Lnws;

    check-cast v6, Lnlx;

    iget v10, v6, Lnlx;->b:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_13

    iget-object v6, v6, Lnlx;->c:Ljava/lang/Object;

    check-cast v6, Lnlv;

    goto :goto_3

    :cond_13
    sget-object v6, Lnlv;->b:Lnlv;

    :goto_3
    iget-object v6, v6, Lnlv;->a:Lnxa;

    sget-object v10, Lnlv;->b:Lnlv;

    invoke-virtual {v10}, Lnws;->O()Lnwn;

    move-result-object v10

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnlw;

    iget-object v13, v12, Lnlw;->b:Lnlu;

    if-nez v13, :cond_14

    sget-object v13, Lnlu;->f:Lnlu;

    :cond_14
    iget v14, v13, Lnlu;->a:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_16

    invoke-virtual {v12, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnwn;

    invoke-virtual {v14, v12}, Lnwn;->s(Lnws;)V

    invoke-virtual {v3, v13}, Llnz;->a(Lnlu;)Lnlu;

    move-result-object v12

    iget-object v13, v14, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_15

    invoke-virtual {v14}, Lnwn;->p()V

    :cond_15
    iget-object v13, v14, Lnwn;->b:Lnws;

    check-cast v13, Lnlw;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v12, v13, Lnlw;->b:Lnlu;

    iget v12, v13, Lnlw;->a:I

    or-int/2addr v12, v5

    iput v12, v13, Lnlw;->a:I

    invoke-virtual {v14}, Lnwn;->i()Lnws;

    move-result-object v12

    check-cast v12, Lnlw;

    goto :goto_5

    :cond_16
    :goto_5
    iget-object v13, v10, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_17

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_17
    iget-object v13, v10, Lnwn;->b:Lnws;

    check-cast v13, Lnlv;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lnlv;->b()V

    iget-object v13, v13, Lnlv;->a:Lnxa;

    invoke-interface {v13, v12}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_18
    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lnlv;

    iget-object v6, v9, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_19
    iget-object v6, v9, Lnwn;->b:Lnws;

    check-cast v6, Lnlx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v6, Lnlx;->c:Ljava/lang/Object;

    iput v11, v6, Lnlx;->b:I

    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    iget-object v3, v3, Lozv;->g:Lozh;

    if-nez v3, :cond_1a

    sget-object v3, Lozh;->l:Lozh;

    :cond_1a
    invoke-virtual {v3, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnwn;

    invoke-virtual {v6, v3}, Lnwn;->s(Lnws;)V

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lnlx;

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_1b

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_1b
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Lozh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v9, Lozh;->h:Lnlx;

    iget v3, v9, Lozh;->a:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v9, Lozh;->a:I

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lozh;

    iget-object v6, v8, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_1c
    iget-object v6, v8, Lnwn;->b:Lnws;

    check-cast v6, Lozv;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v6, Lozv;->g:Lozh;

    iget v3, v6, Lozv;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v6, Lozv;->a:I

    :cond_1d
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    iget-object v3, v3, Lozv;->h:Lozq;

    if-nez v3, :cond_1e

    sget-object v3, Lozq;->k:Lozq;

    :cond_1e
    iget-object v3, v3, Lozq;->j:Lnxa;

    invoke-interface {v3}, Lnxa;->size()I

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_7

    :cond_1f
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    iget-object v3, v3, Lozv;->h:Lozq;

    if-nez v3, :cond_20

    sget-object v3, Lozq;->k:Lozq;

    :cond_20
    invoke-virtual {v3, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnwn;

    invoke-virtual {v6, v3}, Lnwn;->s(Lnws;)V

    const/4 v3, 0x0

    :goto_6
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    iget-object v9, v9, Lozq;->j:Lnxa;

    invoke-interface {v9}, Lnxa;->size()I

    move-result v9

    if-ge v3, v9, :cond_27

    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    iget-object v9, v9, Lozq;->j:Lnxa;

    invoke-interface {v9, v3}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lozp;

    invoke-virtual {v9, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnwn;

    invoke-virtual {v10, v9}, Lnwn;->s(Lnws;)V

    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Lozp;

    iget-object v9, v9, Lozp;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_24

    iget-object v9, v10, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_21

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_21
    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Lozp;

    sget-object v11, Lnxp;->b:Lnxp;

    iput-object v11, v9, Lozp;->c:Lnwz;

    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Lozp;

    iget-object v9, v9, Lozp;->b:Ljava/lang/String;

    invoke-static {v9}, Llnz;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v11, v10, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_22

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_22
    iget-object v11, v10, Lnwn;->b:Lnws;

    check-cast v11, Lozp;

    iget-object v12, v11, Lozp;->c:Lnwz;

    invoke-interface {v12}, Lnwz;->c()Z

    move-result v13

    if-nez v13, :cond_23

    invoke-static {v12}, Lnws;->T(Lnwz;)Lnwz;

    move-result-object v12

    iput-object v12, v11, Lozp;->c:Lnwz;

    :cond_23
    iget-object v11, v11, Lozp;->c:Lnwz;

    invoke-static {v9, v11}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_24
    iget-object v9, v10, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_25

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_25
    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Lozp;

    iget v11, v9, Lozp;->a:I

    and-int/lit8 v11, v11, -0x2

    iput v11, v9, Lozp;->a:I

    sget-object v11, Lozp;->f:Lozp;

    iget-object v11, v11, Lozp;->b:Ljava/lang/String;

    iput-object v11, v9, Lozp;->b:Ljava/lang/String;

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_26

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_26
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Lozq;

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v10

    check-cast v10, Lozp;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Lozq;->c()V

    iget-object v9, v9, Lozq;->j:Lnxa;

    invoke-interface {v9, v3, v10}, Lnxa;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_27
    iget-object v3, v8, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_28
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v6

    check-cast v6, Lozq;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v3, Lozv;->h:Lozq;

    iget v6, v3, Lozv;->a:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v3, Lozv;->a:I

    :goto_7
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    iget-object v3, v3, Lozv;->f:Loyt;

    if-nez v3, :cond_29

    sget-object v3, Loyt;->b:Loyt;

    :cond_29
    iget-object v3, v3, Loyt;->a:Lnxa;

    invoke-interface {v3}, Lnxa;->size()I

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_9

    :cond_2a
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    iget-object v3, v3, Lozv;->f:Loyt;

    if-nez v3, :cond_2b

    sget-object v3, Loyt;->b:Loyt;

    :cond_2b
    invoke-virtual {v3, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnwn;

    invoke-virtual {v6, v3}, Lnwn;->s(Lnws;)V

    const/4 v3, 0x0

    :goto_8
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Loyt;

    iget-object v9, v9, Loyt;->a:Lnxa;

    invoke-interface {v9}, Lnxa;->size()I

    move-result v9

    if-ge v3, v9, :cond_33

    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Loyt;

    iget-object v9, v9, Loyt;->a:Lnxa;

    invoke-interface {v9, v3}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Loys;

    invoke-virtual {v9, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnwn;

    invoke-virtual {v10, v9}, Lnwn;->s(Lnws;)V

    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Loys;

    iget-object v9, v9, Loys;->d:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2f

    iget-object v9, v10, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_2c

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_2c
    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Loys;

    sget-object v11, Lnxp;->b:Lnxp;

    iput-object v11, v9, Loys;->e:Lnwz;

    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Loys;

    iget-object v9, v9, Loys;->d:Ljava/lang/String;

    invoke-static {v9}, Llnz;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v11, v10, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_2d

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_2d
    iget-object v11, v10, Lnwn;->b:Lnws;

    check-cast v11, Loys;

    iget-object v12, v11, Loys;->e:Lnwz;

    invoke-interface {v12}, Lnwz;->c()Z

    move-result v13

    if-nez v13, :cond_2e

    invoke-static {v12}, Lnws;->T(Lnwz;)Lnwz;

    move-result-object v12

    iput-object v12, v11, Loys;->e:Lnwz;

    :cond_2e
    iget-object v11, v11, Loys;->e:Lnwz;

    invoke-static {v9, v11}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_2f
    iget-object v9, v10, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_30

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_30
    iget-object v9, v10, Lnwn;->b:Lnws;

    check-cast v9, Loys;

    iget v11, v9, Loys;->a:I

    const v12, -0x80001

    and-int/2addr v11, v12

    iput v11, v9, Loys;->a:I

    sget-object v11, Loys;->g:Loys;

    iget-object v11, v11, Loys;->d:Ljava/lang/String;

    iput-object v11, v9, Loys;->d:Ljava/lang/String;

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_31

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_31
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Loyt;

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v10

    check-cast v10, Loys;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Loyt;->a:Lnxa;

    invoke-interface {v11}, Lnxa;->c()Z

    move-result v12

    if-nez v12, :cond_32

    invoke-static {v11}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v11

    iput-object v11, v9, Loyt;->a:Lnxa;

    :cond_32
    iget-object v9, v9, Loyt;->a:Lnxa;

    invoke-interface {v9, v3, v10}, Lnxa;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_33
    iget-object v3, v8, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_34
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v6

    check-cast v6, Loyt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v3, Lozv;->f:Loyt;

    iget v6, v3, Lozv;->a:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Lozv;->a:I

    :goto_9
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    iget-object v3, v3, Lozv;->k:Loyv;

    if-nez v3, :cond_35

    sget-object v3, Loyv;->f:Loyv;

    :cond_35
    iget-object v3, v3, Loyv;->d:Lnxa;

    invoke-interface {v3}, Lnxa;->size()I

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_b

    :cond_36
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    iget-object v3, v3, Lozv;->k:Loyv;

    if-nez v3, :cond_37

    sget-object v3, Loyv;->f:Loyv;

    :cond_37
    invoke-virtual {v3, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnwn;

    invoke-virtual {v6, v3}, Lnwn;->s(Lnws;)V

    const/4 v3, 0x0

    :goto_a
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Loyv;

    iget-object v9, v9, Loyv;->d:Lnxa;

    invoke-interface {v9}, Lnxa;->size()I

    move-result v9

    if-ge v3, v9, :cond_3a

    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Loyv;

    iget-object v9, v9, Loyv;->d:Lnxa;

    invoke-interface {v9, v3}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Loyw;

    invoke-virtual {v9, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnwn;

    invoke-virtual {v10, v9}, Lnwn;->s(Lnws;)V

    sget-object v9, Llnz;->c:Llny;

    invoke-static {v9, v10}, Llnz;->c(Llny;Lnxx;)V

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_38

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_38
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Loyv;

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v10

    check-cast v10, Loyw;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Loyv;->d:Lnxa;

    invoke-interface {v11}, Lnxa;->c()Z

    move-result v12

    if-nez v12, :cond_39

    invoke-static {v11}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v11

    iput-object v11, v9, Loyv;->d:Lnxa;

    :cond_39
    iget-object v9, v9, Loyv;->d:Lnxa;

    invoke-interface {v9, v3, v10}, Lnxa;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_3a
    iget-object v3, v8, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_3b
    iget-object v3, v8, Lnwn;->b:Lnws;

    check-cast v3, Lozv;

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v6

    check-cast v6, Loyv;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v3, Lozv;->k:Loyv;

    iget v6, v3, Lozv;->a:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v3, Lozv;->a:I

    :goto_b
    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lozv;

    iget-object v6, v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->f:Lmrl;

    invoke-interface {v6}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3c

    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :cond_3c
    sget-object v6, Llnr;->j:Llhj;

    invoke-virtual {v2, v6}, Lnwq;->e(Llhj;)V

    iget-object v2, v2, Lnwq;->l:Lnwj;

    iget-object v7, v6, Llhj;->b:Ljava/lang/Object;

    check-cast v7, Lnwr;

    invoke-virtual {v2, v7}, Lnwj;->k(Lnwr;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3d

    iget-object v2, v6, Llhj;->d:Ljava/lang/Object;

    goto :goto_c

    :cond_3d
    invoke-virtual {v6, v2}, Llhj;->b(Ljava/lang/Object;)V

    :goto_c
    check-cast v2, Llnr;

    iget-boolean v6, v2, Llnr;->h:Z

    iget v7, v3, Lozv;->a:I

    and-int/lit8 v7, v7, 0x40

    iget-object v8, v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->d:Llnq;

    if-nez v8, :cond_3f

    monitor-enter p0

    :try_start_1
    iget-object v8, v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->d:Llnq;

    if-nez v8, :cond_3e

    new-instance v8, Llnq;

    invoke-direct {v8}, Llnq;-><init>()V

    iput-object v8, v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->d:Llnq;

    :cond_3e
    monitor-exit p0

    goto :goto_d

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_3f
    :goto_d
    if-eqz v7, :cond_40

    const/4 v7, 0x1

    goto :goto_e

    :cond_40
    const/4 v7, 0x0

    :goto_e
    if-eqz v6, :cond_46

    sget-object v6, Loic;->a:Loic;

    invoke-virtual {v6}, Loic;->b()Loid;

    move-result-object v6

    invoke-interface {v6, v0}, Loid;->b(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_41

    goto/16 :goto_10

    :cond_41
    iget-object v6, v8, Llnq;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_42

    invoke-static {v6}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v4

    goto/16 :goto_11

    :cond_42
    iget-object v6, v8, Llnq;->a:Ljpl;

    if-nez v6, :cond_44

    monitor-enter v8

    :try_start_2
    iget-object v6, v8, Llnq;->a:Ljpl;

    if-nez v6, :cond_43

    invoke-static/range {p1 .. p1}, Ljpj;->a(Landroid/content/Context;)Ljpl;

    move-result-object v6

    iput-object v6, v8, Llnq;->a:Ljpl;

    :cond_43
    monitor-exit v8

    goto :goto_f

    :catchall_2
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_44
    :goto_f
    xor-int/2addr v7, v5

    if-eqz v7, :cond_45

    iget-object v7, v8, Llnq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v7

    if-nez v7, :cond_45

    new-instance v7, Llnp;

    invoke-direct {v7, v8}, Llnp;-><init>(Llnq;)V

    move-object v15, v6

    check-cast v15, Ljde;

    iget-object v9, v15, Ljde;->g:Landroid/os/Looper;

    const-class v10, Ljpk;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v9, v10}, Ljfc;->b(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Ljfb;

    move-result-object v7

    iget-object v9, v15, Ljde;->e:Ljcy;

    check-cast v9, Ljpi;

    iget-object v12, v9, Ljpi;->a:Ljnt;

    new-instance v14, Ljso;

    const/4 v13, 0x1

    const/16 v16, 0x0

    move-object v9, v14

    move-object v10, v15

    move-object v11, v7

    move-object v4, v14

    move-object/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Ljso;-><init>(Ljde;Ljfb;Ljnt;I[B)V

    new-instance v9, Ljhs;

    const/4 v10, 0x3

    invoke-direct {v9, v15, v10}, Ljhs;-><init>(Ljde;I)V

    invoke-static {}, Ldja;->y()Ljfg;

    move-result-object v10

    iput-object v4, v10, Ljfg;->a:Ljfh;

    iput-object v9, v10, Ljfg;->b:Ljfh;

    iput-object v7, v10, Ljfg;->c:Ljfb;

    new-array v4, v5, [Ljca;

    sget-object v7, Ljpb;->a:Ljca;

    const/4 v9, 0x0

    aput-object v7, v4, v9

    iput-object v4, v10, Ljfg;->d:[Ljca;

    const/16 v4, 0x119b

    iput v4, v10, Ljfg;->e:I

    invoke-virtual {v10}, Ljfg;->a()Ldja;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljde;->k(Ldja;)V

    :cond_45
    invoke-interface {v6}, Ljpl;->h()Ljot;

    move-result-object v4

    invoke-static {v4}, Lktf;->b(Ljot;)Lnou;

    move-result-object v4

    invoke-static {v4}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v4

    new-instance v6, Llps;

    invoke-direct {v6, v8, v5}, Llps;-><init>(Llnq;I)V

    sget v5, Lmny;->a:I

    invoke-static {}, Lmoc;->b()Lmnt;

    move-result-object v5

    new-instance v7, Lmnx;

    invoke-direct {v7, v5, v6}, Lmnx;-><init>(Lmnt;Lmqi;)V

    sget-object v5, Lnnv;->a:Lnnv;

    invoke-static {v4, v7, v5}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    const-class v5, Ljava/lang/Throwable;

    sget-object v6, Lhop;->q:Lhop;

    sget-object v7, Lnnv;->a:Lnnv;

    invoke-static {v4, v5, v6, v7}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    goto :goto_11

    :cond_46
    :goto_10
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v4

    :goto_11
    new-instance v5, Llnv;

    invoke-direct {v5, v1, v0, v3, v2}, Llnv;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;Landroid/content/Context;Lozv;Llnr;)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v4, v5, v0}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method
