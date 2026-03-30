.class public Ljqx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljrg;


# static fields
.field public static final a:Lsdb;

.field private static final i:Lpul;


# instance fields
.field final b:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final c:Lohe;

.field private final d:Loey;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lpdf;

.field private final g:Landroid/content/Context;

.field private final h:Ltxm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Luow;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    sput-object v0, Ljqx;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ljqx;->i:Lpul;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "jqx"

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

    :goto_5
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Luow;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lpdf;)V
    .locals 10

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Loey;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    invoke-static {v3}, Lolx;->ae(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljqx;->h:Ltxm;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

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

    :goto_5
    new-instance v8, Llwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, p0}, Ljqv;-><init>(Ljqx;)V

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const v1, 0x5

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

    :goto_9
    iput-object v1, p0, Ljqx;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    sget-object v0, Loey;->m:Ljava/util/List;

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

    :goto_b
    iput-object v0, p0, Ljqx;->d:Loey;

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

    nop

    :goto_c
    const/4 v9, 0x0

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

    :goto_d
    iput-object p1, p0, Ljqx;->g:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2}, Loro;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    new-instance p1, Ljqv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v6, 0x0

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

    :goto_14
    iput-object v3, p0, Ljqx;->c:Lohe;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_15
    new-instance v2, Loro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    :goto_18
    iput-object p3, p0, Ljqx;->f:Lpdf;

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

    :goto_19
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v2, 0x64

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    invoke-direct/range {v1 .. v9}, Loey;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lofi;Loez;Loff;Lrtm;Lqar;)V

    goto/32 :goto_27

    nop

    nop

    :goto_1c
    new-instance v3, Lohe;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v3, v1, v2}, Lohe;-><init>(Landroid/content/Context;Loro;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v5, Lofi;->a:Lofi;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    const-string v3, "ANDROID_CAMERA"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    const/4 v7, 0x0

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

    :goto_22
    invoke-direct {v8, v0}, Llwi;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object p2, p0, Ljqx;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_17

    nop

    nop
.end method


# virtual methods
.method public final a(Lskd;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljqx;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_4
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljqw;

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

    :goto_6
    invoke-interface {p1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Ljqx;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    invoke-direct {v0, p1, v1}, Lfdo;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p1, Ljqx;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0}, Ljqw;-><init>(Ljqx;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Ljqx;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Ljqx;->b(Lscn;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, v0, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    const-string v0, "Queue full. Discarded camera event."

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lscn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Ljqx;->h:Ltxm;

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

    nop

    :goto_19
    iget-object v0, p0, Ljqx;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v0, 0xa05

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    invoke-static {p1, v1, v2, v3, v0}, Lsgj;->V(Lsui;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-wide/16 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_29
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lscn;)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljqx;->f:Lpdf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object p0, p0, Ljqx;->f:Lpdf;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    :try_start_0
    iget-object v0, p0, Ljqx;->f:Lpdf;

    nop

    const-string v1, "clearcut.process"

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ljqx;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    const/16 v2, 0x64

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    iget-object p1, p1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v1, p1

    nop

    nop

    nop

    nop

    check-cast v1, Lorv;

    nop

    iget-object v1, v1, Lorv;->a:Lorr;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lolx;->ag(Ljava/lang/Object;)V

    check-cast p1, Lorv;

    nop

    nop

    nop

    iget-object p1, p1, Lorv;->a:Lorr;

    nop

    nop

    iget p1, p1, Lorr;->a:I

    nop

    const/4 v1, 0x1

    nop

    nop

    if-ne p1, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lfdo;

    nop

    nop

    nop

    iget-object v1, p0, Ljqx;->d:Loey;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    iget-object v2, p0, Ljqx;->g:Landroid/content/Context;

    nop

    sget-object v3, Ljqx;->i:Lpul;

    nop

    nop

    invoke-static {v2, v3}, Lpux;->a(Landroid/content/Context;Lpul;)Lpux;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v1, v0, v2}, Loey;->g(Ltlq;Lpux;)Loex;

    move-result-object v0

    nop

    invoke-virtual {v0}, Loev;->a()Loqy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop
.end method
