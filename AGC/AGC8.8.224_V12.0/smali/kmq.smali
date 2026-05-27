.class final Lkmq;
.super Ljava/lang/Object;

# interfaces
.implements Lkmm;


# instance fields
.field public final a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field private final c:Ljava/util/List;

.field private d:Z

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Lkmj;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lkmq;->e:I

    iput-object p1, p0, Lkmq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkmq;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lkmq;->c:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkmq;->d:Z

    return-void
.end method

.method public constructor <init>(Lkms;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lkmq;->e:I

    iput-object p1, p0, Lkmq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkmq;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x1770

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lkmq;->c:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkmq;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lkmq;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkmq;->a:Ljava/lang/String;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lkmq;->a:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized b(JJLkml;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkmq;->e:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lkmq;->d:Z

    goto/16 :goto_4

    :pswitch_0
    iget-boolean v0, p0, Lkmq;->d:Z

    if-nez v0, :cond_0

    sget p1, Lmvv;->d:I

    sget-object p1, Lmyu;->a:Lmvv;

    invoke-interface {p5, p1}, Lkml;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkmq;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v1, p0, Lkmq;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lkmq;->b:Ljava/lang/Object;

    check-cast v1, Lkms;

    iget v1, v1, Lkms;->c:I

    :goto_0
    const/16 v2, 0x1770

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lkmq;->b:Ljava/lang/Object;

    check-cast v2, Lkms;

    iget-object v2, v2, Lkms;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkmo;

    iget-wide v4, v2, Lkmo;->e:J

    cmp-long v6, v4, p3

    if-lez v6, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    cmp-long v3, v4, p1

    if-ltz v3, :cond_2

    iget-object v3, p0, Lkmq;->b:Ljava/lang/Object;

    check-cast v3, Lkms;

    iget-object v3, v3, Lkms;->b:Lkah;

    invoke-virtual {v3}, Lkah;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkmo;

    invoke-virtual {v3, v2}, Lkmo;->a(Lkmo;)V

    iget-object v2, p0, Lkmq;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lkmq;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lkms;

    iget v4, v4, Lkms;->c:I

    if-ge v1, v4, :cond_6

    check-cast v2, Lkms;

    iget-object v2, v2, Lkms;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkmo;

    iget-wide v4, v2, Lkmo;->e:J

    cmp-long v6, v4, p3

    if-lez v6, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v6, v4, p1

    if-ltz v6, :cond_5

    iget-object v4, p0, Lkmq;->b:Ljava/lang/Object;

    check-cast v4, Lkms;

    iget-object v4, v4, Lkms;->b:Lkah;

    invoke-virtual {v4}, Lkah;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkmo;

    invoke-virtual {v4, v2}, Lkmo;->a(Lkmo;)V

    iget-object v2, p0, Lkmq;->c:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p1, p0, Lkmq;->c:Ljava/util/List;

    invoke-interface {p5, p1}, Lkml;->a(Ljava/util/List;)V

    iget-object p1, p0, Lkmq;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_3
    :try_start_4
    iget-object p2, p0, Lkmq;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_7

    iget-object p2, p0, Lkmq;->b:Ljava/lang/Object;

    check-cast p2, Lkms;

    iget-object p2, p2, Lkms;->b:Lkah;

    iget-object p3, p0, Lkmq;->c:Ljava/util/List;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkmo;

    invoke-virtual {p2, p3}, Lkah;->b(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lkmq;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :goto_4
    if-nez v0, :cond_8

    sget p1, Lmvv;->d:I

    sget-object p1, Lmyu;->a:Lmvv;

    invoke-interface {p5, p1}, Lkml;->a(Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit p0

    return-void

    :cond_8
    :try_start_9
    iget-object v0, p0, Lkmq;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget-object v1, p0, Lkmq;->b:Ljava/lang/Object;

    check-cast v1, Lkmj;

    iget-object v1, v1, Lkmj;->b:Lkte;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lkte;->a:Ljava/lang/Object;

    iget-object v7, p0, Lkmq;->c:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Lkmk;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lkmk;->a(JJLjava/util/List;)V

    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iget-object p1, p0, Lkmq;->c:Ljava/util/List;

    invoke-interface {p5, p1}, Lkml;->a(Ljava/util/List;)V

    iget-object p1, p0, Lkmq;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iget-object p2, p0, Lkmq;->b:Ljava/lang/Object;

    check-cast p2, Lkmj;

    iget-object p2, p2, Lkmj;->b:Lkte;

    if-eqz p2, :cond_a

    iget-object p2, p2, Lkte;->a:Ljava/lang/Object;

    iget-object p3, p0, Lkmq;->c:Ljava/util/List;

    check-cast p2, Lkmk;

    invoke-virtual {p2, p3}, Lkmk;->b(Ljava/util/List;)V

    :cond_a
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p2

    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_3
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkmq;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkmq;->b:Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Lkmq;->d:Z

    iget-object v0, p0, Lkmq;->b:Ljava/lang/Object;

    check-cast v0, Lkms;

    invoke-virtual {v0, p0}, Lkms;->b(Lkmm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    check-cast v0, Lkmj;

    iget-object v0, v0, Lkmj;->a:Lkaq;

    const-string v2, "Closing session : "

    iget-object v3, p0, Lkmq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkaq;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lkmq;->d:Z

    iget-object v0, p0, Lkmq;->b:Ljava/lang/Object;

    check-cast v0, Lkmj;

    invoke-virtual {v0, p0}, Lkmj;->b(Lkmm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
