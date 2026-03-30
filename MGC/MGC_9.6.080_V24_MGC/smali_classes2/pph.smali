.class final Lpph;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppd;


# instance fields
.field public final a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field private final c:Ljava/util/List;

.field private d:Z

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Lpoz;Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/16 p2, 0x64

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lpph;->e:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lpph;->a:Ljava/lang/String;

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

    :goto_6
    iput-boolean p1, p0, Lpph;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iput-object p1, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lppj;Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpph;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lpph;->e:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const/16 p2, 0x1770

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

    :goto_7
    iput-boolean p1, p0, Lpph;->d:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lpph;->c:Ljava/util/List;

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

    :goto_9
    iput-object p1, p0, Lpph;->b:Ljava/lang/Object;

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

    :goto_a
    new-instance p1, Ljava/util/ArrayList;

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

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpph;->a:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lpph;->e:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(JJLppc;)V
    .locals 8

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p2

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p2

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    monitor-exit p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
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

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    :try_start_4
    iget v0, p0, Lpph;->e:I

    nop

    if-eqz v0, :cond_c

    nop

    iget-boolean v0, p0, Lpph;->d:Z

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget p1, Lryb;->d:I

    nop

    nop

    sget-object p1, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    invoke-interface {p5, p1}, Lppc;->a(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_4

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_5
    iget-object v0, p0, Lpph;->b:Ljava/lang/Object;

    nop

    monitor-enter v0

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v1, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Lpoz;

    nop

    nop

    iget-object v1, v1, Lpoz;->b:Ltlk;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, v1, Ltlk;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Lppa;

    nop

    nop

    nop

    nop

    nop

    move-wide v3, p1

    nop

    nop

    nop

    nop

    nop

    move-wide v5, p3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v2 .. v7}, Lppa;->a(JJLjava/util/List;)V

    :cond_1
    monitor-exit v0

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object p1, p0, Lpph;->c:Ljava/util/List;

    nop

    invoke-interface {p5, p1}, Lppc;->a(Ljava/util/List;)V

    iget-object p1, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter p1

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object p2, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p2, Lpoz;

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lpoz;->b:Ltlk;

    nop

    nop

    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    iget-object p2, p2, Ltlk;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object p3, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    nop

    check-cast p2, Lppa;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p3}, Lppa;->b(Ljava/util/List;)V

    :cond_2
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :cond_3
    :try_start_9
    iget-object v0, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v1, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lppj;

    nop

    nop

    nop

    nop

    iget v1, v1, Lppj;->b:I

    nop

    :goto_c
    const/16 v2, 0x1770

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    if-ge v1, v2, :cond_6

    nop

    nop

    iget-object v2, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v2, Lppj;

    nop

    nop

    nop

    iget-object v2, v2, Lppj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lppf;

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v2, Lppf;->e:J

    nop

    nop

    nop

    nop

    cmp-long v6, v4, p3

    nop

    nop

    nop

    nop

    if-lez v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    cmp-long v3, v4, p1

    nop

    nop

    nop

    nop

    if-ltz v3, :cond_5

    nop

    nop

    iget-object v3, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Lppj;

    nop

    iget-object v3, v3, Lppj;->c:Lnar;

    nop

    nop

    invoke-virtual {v3}, Lnar;->E()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lppf;

    nop

    invoke-virtual {v3, v2}, Lppf;->a(Lppf;)V

    iget-object v2, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_6
    :goto_d
    move v1, v3

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    move-object v4, v2

    nop

    check-cast v4, Lppj;

    nop

    nop

    nop

    nop

    iget v4, v4, Lppj;->b:I

    nop

    nop

    nop

    nop

    nop

    if-ge v1, v4, :cond_9

    nop

    nop

    nop

    check-cast v2, Lppj;

    nop

    iget-object v2, v2, Lppj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lppf;

    nop

    nop

    iget-wide v4, v2, Lppf;->e:J

    nop

    nop

    cmp-long v6, v4, p3

    nop

    nop

    nop

    nop

    if-lez v6, :cond_7

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_7
    cmp-long v4, v4, p1

    nop

    nop

    if-ltz v4, :cond_8

    nop

    nop

    nop

    iget-object v4, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v4, Lppj;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lppj;->c:Lnar;

    nop

    invoke-virtual {v4}, Lnar;->E()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lppf;

    nop

    nop

    invoke-virtual {v4, v2}, Lppf;->a(Lppf;)V

    iget-object v2, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_9
    :goto_f
    monitor-exit v0

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iget-object p1, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p5, p1}, Lppc;->a(Ljava/util/List;)V

    iget-object p1, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter p1

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_10
    :try_start_c
    iget-object p2, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    if-ge v3, p2, :cond_a

    nop

    nop

    nop

    iget-object p2, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p2, Lppj;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lppj;->c:Lnar;

    nop

    nop

    nop

    iget-object p3, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    check-cast p3, Lppf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p3}, Lnar;->F(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    :cond_a
    iget-object p2, p0, Lpph;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p1

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_b

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_16

    nop

    :goto_12
    throw p1

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x11

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p2

    nop

    nop

    nop

    :try_start_d
    monitor-exit p1

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p2

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_4
    move-exception p1

    nop

    :try_start_f
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw p1

    nop

    nop

    nop

    nop

    nop

    :cond_c
    iget-boolean v0, p0, Lpph;->d:Z

    nop

    if-nez v0, :cond_3

    nop

    sget p1, Lryb;->d:I

    nop

    sget-object p1, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    invoke-interface {p5, p1}, Lppc;->a(Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

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
.end method

.method public final declared-synchronized close()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lpph;->d:Z

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lppj;

    nop

    invoke-virtual {v0, p0}, Lppj;->b(Lppd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_5
    const v0, 0xb

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_1
    iget v0, p0, Lpph;->e:I

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    if-eqz v0, :cond_0

    nop

    nop

    const-string v0, "Closing session : "

    nop

    iget-object v2, p0, Lpph;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v3, Lpoz;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lpoz;->a:Lpcu;

    nop

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Lpcu;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lpph;->d:Z

    nop

    nop

    iget-object v0, p0, Lpph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpoz;

    nop

    nop

    invoke-virtual {v0, p0}, Lpoz;->b(Lppd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    monitor-exit p0

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
