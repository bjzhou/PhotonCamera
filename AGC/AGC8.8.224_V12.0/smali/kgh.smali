.class public final Lkgh;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public a:Lkht;

.field public final b:Lkhf;

.field public final c:Lkte;


# direct methods
.method public constructor <init>(Lkte;Lkli;Lkhf;Lkaq;[B[B[B)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p3

    iput-object v1, v0, Lkgh;->b:Lkhf;

    invoke-interface/range {p2 .. p2}, Lkli;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    xor-int/2addr v2, v3

    invoke-static {v2}, Lmoz;->e(Z)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Lkli;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v3

    invoke-static {v6}, Lmoz;->e(Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v3, v7, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-interface/range {p2 .. p2}, Lkli;->q()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v3

    invoke-static {v8}, Lmoz;->e(Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v3, v7, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    new-instance v1, Lkhs;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lkhu;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v12, Lkhu;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object v4, v1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v3

    move-object v11, v12

    move-object v13, v15

    move-object v14, v15

    invoke-direct/range {v4 .. v15}, Lkhs;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v1}, Lkhs;->d()Lkht;

    move-result-object v1

    iput-object v1, v0, Lkgh;->a:Lkht;

    const-string v1, "fscrtl3A"

    move-object/from16 v2, p4

    invoke-interface {v2, v1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-object/from16 v1, p1

    iput-object v1, v0, Lkgh;->c:Lkte;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lkhs;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkgh;->a:Lkht;

    invoke-static {v0}, Lkhs;->c(Lkht;)Lkhs;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lkfh;)V
    .locals 6

    invoke-virtual {p1}, Lkfh;->d()Z

    move-result v0

    invoke-virtual {p1}, Lkfh;->b()Z

    move-result v1

    invoke-virtual {p1}, Lkfh;->c()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lkgh;->b:Lkhf;

    invoke-virtual {v5}, Lkhf;->a()Lkhd;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v5, p1, v4}, Lkhd;->c(Lkfh;Z)Lnou;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Lkhd;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-enter p0

    :try_start_3
    iget-object p1, p0, Lkgh;->a:Lkht;

    invoke-static {p1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lkgh;->a:Lkht;

    iget-object v0, v0, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lkhs;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    iget-object v0, p0, Lkgh;->a:Lkht;

    iget-object v0, v0, Lkht;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lkhs;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    iget-object v0, p0, Lkgh;->a:Lkht;

    iget-object v0, v0, Lkht;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lkhs;->d()Lkht;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkgh;->c(Lkht;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v5}, Lkhd;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-static {p1, v5}, Lklg;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    monitor-enter p0

    :try_start_6
    iget-object v5, p0, Lkgh;->a:Lkht;

    invoke-static {v5}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v5

    if-nez v0, :cond_7

    iget-object v0, p0, Lkgh;->a:Lkht;

    iget-object v0, v0, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lkhs;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    iget-object v0, p0, Lkgh;->a:Lkht;

    iget-object v0, v0, Lkht;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lkhs;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    iget-object v0, p0, Lkgh;->a:Lkht;

    iget-object v0, v0, Lkht;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {v5}, Lkhs;->d()Lkht;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkgh;->c(Lkht;)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1

    :catchall_4
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1
.end method

.method public final declared-synchronized c(Lkht;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lkgh;->a:Lkht;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d(Lkht;Lkea;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lkht;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lkht;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2}, Lkea;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lkht;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    check-cast p2, Lkht;

    iget-object p2, p2, Lkht;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lkht;Lkea;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lkht;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2}, Lkea;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lkht;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    check-cast p2, Lkht;

    iget-object p2, p2, Lkht;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Lkht;Lkea;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lkht;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lkht;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2}, Lkea;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lkht;->f:[Landroid/hardware/camera2/params/MeteringRectangle;

    check-cast p2, Lkht;

    iget-object p2, p2, Lkht;->f:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
