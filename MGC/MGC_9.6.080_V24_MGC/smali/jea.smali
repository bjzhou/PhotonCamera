.class public final Ljea;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljdn;

.field public final b:I

.field public final c:Lgvg;

.field private final d:Ltxm;

.field private e:Lsui;


# direct methods
.method public constructor <init>(Ltxm;Lgvg;Ljdn;Lhoh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput-object p3, p0, Ljea;->a:Ljdn;

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

    :goto_2
    iput p1, p0, Ljea;->b:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lhmq;->u:Lhmo;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljea;->d:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p4, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Ljea;->c:Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method private static final c()Lsnf;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Ljdr;->a:Ljdr;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    iget v1, v2, Lsnf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    check-cast v2, Lsnf;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    return-object v0

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lsnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v1, v2, Lsnf;->b:I

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

    :goto_15
    add-int/lit8 v3, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lsnf;->a:Lsnf;

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

    :goto_17
    or-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v3, v2, Lsnf;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    iget v1, v1, Ljdr;->c:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw v0

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsnf;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    :try_start_0
    monitor-enter p0

    nop
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Ljea;->e:Lsui;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    iput-object v1, p0, Ljea;->e:Lsui;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-wide/16 v1, 0x0

    nop

    nop

    nop

    invoke-interface {v0, v1, v2, p0}, Lsui;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, Lsnf;

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-static {}, Ljea;->c()Lsnf;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Ljea;->c()Lsnf;

    move-result-object p0

    nop

    nop

    nop

    :cond_1
    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_8
    const v1, 0x18

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

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
    iget-object v0, p0, Ljea;->e:Lsui;

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Ljea;->d:Ltxm;

    nop

    check-cast v0, Ljdz;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    const/16 v5, 0x102

    nop

    nop

    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljdq;

    nop

    nop

    nop

    sget-object v1, Ljdr;->a:Ljdr;

    nop

    nop

    invoke-interface {v0, v1}, Ljdq;->c(Ljdr;)Lsui;

    move-result-object v0

    nop

    iput-object v0, p0, Ljea;->e:Lsui;

    nop

    nop

    nop

    new-instance v1, Lghf;

    nop

    nop

    const/4 v2, 0x7

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lghf;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lolx;->bm(Lsui;Lpbz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
