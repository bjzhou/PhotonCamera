.class public Lhxn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Lrss;

.field public final d:Loxn;

.field private final e:Lrss;

.field private final f:Lpus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const-string v0, "hxn"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lhxn;->a:Lsdb;

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
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lrss;Lrss;Ljava/util/Set;Lpus;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p3, p0, Lhxn;->c:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p4}, Lhyk;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-static {p1}, Lolx;->aY(Ljava/util/concurrent/Executor;)Loxn;

    move-result-object p1

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

    :goto_4
    iput-object p2, p0, Lhxn;->e:Lrss;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhxn;->d:Loxn;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lhxn;->b:Ljava/util/List;

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

    :goto_8
    iput-object p5, p0, Lhxn;->f:Lpus;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized a(Lpnu;Lfxj;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :cond_0
    :goto_3
    goto/32 :goto_9

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

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v0, "frame"

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhxn;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lhyk;->b(Ljava/lang/String;Ljava/util/Collection;)V

    iget-object v0, p0, Lhxn;->f:Lpus;

    nop

    nop

    iput-object p1, v0, Lpus;->a:Ljava/lang/Object;

    nop

    nop

    iget-object v0, p0, Lhxn;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lhyj;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Lhyj;->d(Lpnu;Lfxj;)V

    goto :goto_7

    nop

    nop

    :cond_1
    iget-object p1, p0, Lhxn;->e:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    iget-object p1, p0, Lhxn;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-nez p1, :cond_2

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    iget-object p1, p0, Lhxn;->e:Lrss;

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lpgh;

    nop

    nop

    nop

    nop

    new-instance p2, Lhxm;

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {p2, p0, v0}, Lhxm;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Lpgh;->l(Lpgg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    const v0, 0x16

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    return-void

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lhxn;->b:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lhyj;

    nop

    invoke-virtual {v1}, Lhyj;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    goto/32 :goto_0

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

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

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

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
