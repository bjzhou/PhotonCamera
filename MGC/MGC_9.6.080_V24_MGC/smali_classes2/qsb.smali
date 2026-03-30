.class public final Lqsb;
.super Lqrx;
.source "PG"

# interfaces
.implements Lqpc;


# instance fields
.field public final a:Lsul;

.field public final b:Lqmq;

.field public final c:Ltud;

.field public final d:Lqoz;

.field public final e:Lqse;

.field private final f:Z

.field private final g:Lqrw;


# direct methods
.method public constructor <init>(Lqpa;Lqrw;Lsul;Ltud;Lqse;Lqmq;Ltxm;Ljava/util/concurrent/Executor;Lrss;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    :goto_1
    iput-object p4, p0, Lqsb;->c:Ltud;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p8, p4, p7}, Lqpa;->a(Ljava/util/concurrent/Executor;Ltud;Ltxm;)Lqoz;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lqsb;->f:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v1, 0x20

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lqrx;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lqsb;->d:Lqoz;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lqsb;->g:Lqrw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    iput-object p5, p0, Lqsb;->e:Lqse;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    iput-object p3, p0, Lqsb;->a:Lsul;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p9, p1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    iput-object p6, p0, Lqsb;->b:Lqmq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    sget-object v1, Lqrs;->a:Lqrs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop
.end method


# virtual methods
.method public final U()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lqsb;->f:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lqsb;->a()V

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public final a()V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lqrz;

    nop

    nop

    goto/32 :goto_13

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xc

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, p0}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lqrw;->d:Lqrv;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lgte;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    const/16 v1, 0x12

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lqrw;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, v1}, Lgte;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_10
    iget-object p0, p0, Lqsb;->g:Lqrw;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p0}, Lqrz;-><init>(Lqsb;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lqrw;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
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
.end method
