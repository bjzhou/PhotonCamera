.class final Letd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lete;


# direct methods
.method public constructor <init>(Lete;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Letd;->a:Lete;

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
.method public final run()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lete;->e()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lete;->h:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    invoke-static {}, Leqh;->b()V

    iget-object v1, p0, Lete;->h:Landroid/content/Intent;

    nop

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lete;->g:Ljava/util/List;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/content/Intent;

    nop

    nop

    iget-object v2, p0, Lete;->h:Landroid/content/Intent;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    iput-object v1, p0, Lete;->h:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v1, "Dequeue-d command is not the first."

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_3
    iget-object v1, p0, Lete;->k:Lts;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lts;->a:Ljava/lang/Object;

    nop

    iget-object v2, p0, Lete;->f:Lesv;

    nop

    nop

    nop

    nop

    iget-object v3, v2, Lesv;->d:Ljava/lang/Object;

    nop

    monitor-enter v3

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v2, Lesv;->c:Ljava/util/Map;

    nop

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_7
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_3

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

    nop

    :cond_3
    :try_start_2
    iget-object v2, p0, Lete;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Lewu;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lewu;->b:Ljava/lang/Object;

    nop

    nop

    monitor-enter v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    check-cast v1, Lewu;

    nop

    nop

    nop

    iget-object v1, v1, Lewu;->a:Ljava/util/ArrayDeque;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lete;->g:Ljava/util/List;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_c

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    monitor-exit v2

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_b
    iget-object v1, p0, Lete;->g:Ljava/util/List;

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lete;->c()V

    :cond_5
    :goto_c
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_6
    monitor-exit v3

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_14

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const v0, 0xf

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1e

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

    :goto_11
    iget-object p0, p0, Letd;->a:Lete;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    :goto_13
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_6
    :try_start_8
    invoke-static {}, Leqh;->b()V

    iget-object p0, p0, Lete;->i:Letc;

    nop

    nop

    nop

    if-eqz p0, :cond_5

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Letc;->a()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method
