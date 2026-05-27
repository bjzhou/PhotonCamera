.class public final Ljvb;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Laee;

    const/16 p3, 0x1e

    invoke-direct {p2, p3}, Laee;-><init>(I)V

    iput-object p2, p0, Ljvb;->a:Ljava/lang/Object;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljvb;->d:Ljava/lang/Object;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljvb;->c:Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, p0, Ljvb;->b:I

    iput-object p1, p0, Ljvb;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljzw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljvb;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ljvb;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Ljvb;->b:I

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    iput-object p1, p0, Ljvb;->c:Ljava/lang/Object;

    iput-object p2, p0, Ljvb;->e:Ljava/lang/Object;

    return-void
.end method

.method private final n(II)I
    .locals 6

    iget-object v0, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lih;

    iget v2, v1, Lih;->a:I

    iget v3, v1, Lih;->b:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gt v3, p1, :cond_1

    if-ne v2, v5, :cond_0

    iget v1, v1, Lih;->d:I

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_0
    if-ne v2, v4, :cond_3

    iget v1, v1, Lih;->d:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_1
    if-ne p2, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lih;->b:I

    goto :goto_1

    :cond_2
    if-ne p2, v4, :cond_3

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lih;->b:I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget-object p2, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_6

    iget-object v0, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lih;

    iget v1, v0, Lih;->a:I

    iget v1, v0, Lih;->d:I

    if-gtz v1, :cond_5

    iget-object v1, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljvb;->i(Lih;)V

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_6
    return p1
.end method

.method private final o(Lih;)V
    .locals 10

    iget v0, p1, Lih;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v2, p1, Lih;->b:I

    invoke-direct {p0, v2, v0}, Ljvb;->n(II)I

    move-result v0

    iget v2, p1, Lih;->b:I

    iget v3, p1, Lih;->a:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_1
    iget v7, p1, Lih;->d:I

    if-ge v5, v7, :cond_3

    iget v7, p1, Lih;->b:I

    mul-int v8, v3, v5

    add-int/2addr v7, v8

    iget v8, p1, Lih;->a:I

    invoke-direct {p0, v7, v8}, Ljvb;->n(II)I

    move-result v7

    iget v8, p1, Lih;->a:I

    packed-switch v8, :pswitch_data_1

    :pswitch_3
    goto :goto_4

    :pswitch_4
    add-int/lit8 v9, v0, 0x1

    if-ne v7, v9, :cond_0

    goto :goto_2

    :pswitch_5
    if-ne v7, v0, :cond_0

    :goto_2
    const/4 v9, 0x1

    goto :goto_3

    :cond_0
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_1
    :goto_4
    iget-object v9, p1, Lih;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v0, v6, v9}, Ljvb;->d(IIILjava/lang/Object;)Lih;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Ljvb;->g(Lih;I)V

    invoke-virtual {p0, v0}, Ljvb;->i(Lih;)V

    iget v0, p1, Lih;->a:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_2

    add-int/2addr v2, v6

    :cond_2
    move v0, v7

    const/4 v6, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lih;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljvb;->i(Lih;)V

    if-lez v6, :cond_4

    iget p1, p1, Lih;->a:I

    invoke-virtual {p0, p1, v0, v6, v1}, Ljvb;->d(IIILjava/lang/Object;)Lih;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljvb;->g(Lih;I)V

    invoke-virtual {p0, p1}, Ljvb;->i(Lih;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final p(Lih;)V
    .locals 4

    iget-object v0, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lih;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Ljvb;->e:Ljava/lang/Object;

    iget v1, p1, Lih;->b:I

    iget v2, p1, Lih;->d:I

    iget-object p1, p1, Lih;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->f(IILjava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Ljvb;->e:Ljava/lang/Object;

    iget v1, p1, Lih;->b:I

    iget p1, p1, Lih;->d:I

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v2, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Landroid/support/v7/widget/RecyclerView;->M(IIZ)V

    iget-object p1, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/RecyclerView;->N:Z

    return-void

    :pswitch_3
    iget-object v0, p0, Ljvb;->e:Ljava/lang/Object;

    iget v1, p1, Lih;->b:I

    iget p1, p1, Lih;->d:I

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0, v1, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->g(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final q(I)Z
    .locals 7

    iget-object v0, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lih;

    iget v4, v3, Lih;->a:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget v4, v3, Lih;->b:I

    iget v3, v3, Lih;->d:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v4, v6}, Ljvb;->c(II)I

    move-result v6

    if-ne v6, p1, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lnou;
    .locals 5

    iget-object v0, p0, Ljvb;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljvb;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Ljvb;->e:Ljava/lang/Object;

    iget-object v2, p0, Ljvb;->d:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljzw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Ljvb;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljvb;->b:I

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljvc;

    invoke-direct {v2, p1}, Ljvc;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Ljvb;->d:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljvb;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljvb;->b:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Ljvb;->c:Ljava/lang/Object;

    new-instance v0, Ljum;

    const/4 v4, 0x6

    invoke-direct {v0, p0, v4}, Ljum;-><init>(Ljvb;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p1, p0, Ljvb;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Ljvb;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvc;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ljvc;->b:Lnph;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, Ljvb;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljvb;->b:I

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    check-cast v1, Ljvc;

    iget-object p1, v1, Ljvc;->b:Lnph;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, v2, Ljvc;->b:Lnph;

    return-object p1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final b(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljvb;->c(II)I

    move-result p1

    return p1
.end method

.method final c(II)I
    .locals 5

    iget-object v0, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_3

    iget-object v1, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lih;

    iget v2, v1, Lih;->a:I

    iget v3, v1, Lih;->b:I

    if-gt v3, p1, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    iget v1, v1, Lih;->d:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v1, v1, Lih;->d:I

    add-int/2addr p1, v1

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public final d(IIILjava/lang/Object;)Lih;
    .locals 1

    iget-object v0, p0, Ljvb;->a:Ljava/lang/Object;

    invoke-interface {v0}, Laed;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lih;

    if-nez v0, :cond_0

    new-instance v0, Lih;

    invoke-direct {v0, p1, p2, p3, p4}, Lih;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput p1, v0, Lih;->a:I

    iput p2, v0, Lih;->b:I

    iput p3, v0, Lih;->d:I

    iput-object p4, v0, Lih;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ljvb;->e:Ljava/lang/Object;

    iget-object v4, p0, Ljvb;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lih;

    check-cast v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v3, v4}, Landroidx/wear/ambient/AmbientMode$AmbientController;->e(Lih;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljvb;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljvb;->j(Ljava/util/List;)V

    iput v1, p0, Ljvb;->b:I

    return-void
.end method

.method public final f()V
    .locals 7

    invoke-virtual {p0}, Ljvb;->e()V

    iget-object v0, p0, Ljvb;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ljvb;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lih;

    iget v4, v3, Lih;->a:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Ljvb;->e:Ljava/lang/Object;

    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v4, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->e(Lih;)V

    iget-object v4, p0, Ljvb;->e:Ljava/lang/Object;

    iget v5, v3, Lih;->b:I

    iget v6, v3, Lih;->d:I

    iget-object v3, v3, Lih;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v4, v5, v6, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->f(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Ljvb;->e:Ljava/lang/Object;

    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v4, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->e(Lih;)V

    iget-object v4, p0, Ljvb;->e:Ljava/lang/Object;

    iget v5, v3, Lih;->b:I

    iget v3, v3, Lih;->d:I

    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v4, v5, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->h(II)V

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Ljvb;->e:Ljava/lang/Object;

    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v4, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->e(Lih;)V

    iget-object v4, p0, Ljvb;->e:Ljava/lang/Object;

    iget v5, v3, Lih;->b:I

    iget v3, v3, Lih;->d:I

    check-cast v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v4, v5, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->g(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljvb;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljvb;->j(Ljava/util/List;)V

    iput v1, p0, Ljvb;->b:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final g(Lih;I)V
    .locals 2

    iget-object v0, p0, Ljvb;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->e(Lih;)V

    iget v0, p1, Lih;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Ljvb;->e:Ljava/lang/Object;

    iget v1, p1, Lih;->d:I

    iget-object p1, p1, Lih;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0, p2, v1, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->f(IILjava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Ljvb;->e:Ljava/lang/Object;

    iget p1, p1, Lih;->d:I

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0, p2, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->h(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final h()V
    .locals 14

    iget-object v0, p0, Ljvb;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lih;

    iget v3, v3, Lih;->a:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljvb;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_10

    iget-object v4, p0, Ljvb;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lih;

    iget v5, v4, Lih;->a:I

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    :pswitch_1
    iget v5, v4, Lih;->b:I

    iget v7, v4, Lih;->d:I

    add-int/2addr v7, v5

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_2
    const/4 v11, 0x4

    if-ge v5, v7, :cond_5

    iget-object v12, p0, Ljvb;->e:Ljava/lang/Object;

    check-cast v12, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v12, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->d(I)Lmo;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-direct {p0, v5}, Ljvb;->q(I)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_3

    :cond_1
    if-ne v10, v6, :cond_2

    iget-object v10, v4, Lih;->c:Ljava/lang/Object;

    invoke-virtual {p0, v11, v8, v9, v10}, Ljvb;->d(IIILjava/lang/Object;)Lih;

    move-result-object v8

    invoke-direct {p0, v8}, Ljvb;->p(Lih;)V

    move v8, v5

    const/4 v9, 0x0

    :cond_2
    const/4 v10, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    if-nez v10, :cond_4

    iget-object v10, v4, Lih;->c:Ljava/lang/Object;

    invoke-virtual {p0, v11, v8, v9, v10}, Ljvb;->d(IIILjava/lang/Object;)Lih;

    move-result-object v8

    invoke-direct {p0, v8}, Ljvb;->o(Lih;)V

    move v8, v5

    const/4 v9, 0x0

    :cond_4
    const/4 v10, 0x1

    :goto_4
    add-int/2addr v9, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget v5, v4, Lih;->d:I

    if-eq v9, v5, :cond_6

    iget-object v5, v4, Lih;->c:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ljvb;->i(Lih;)V

    invoke-virtual {p0, v11, v8, v9, v5}, Ljvb;->d(IIILjava/lang/Object;)Lih;

    move-result-object v4

    goto :goto_5

    :cond_6
    :goto_5
    if-nez v10, :cond_7

    invoke-direct {p0, v4}, Ljvb;->o(Lih;)V

    goto/16 :goto_d

    :cond_7
    invoke-direct {p0, v4}, Ljvb;->p(Lih;)V

    goto :goto_d

    :pswitch_2
    iget v5, v4, Lih;->b:I

    iget v7, v4, Lih;->d:I

    add-int/2addr v7, v5

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_6
    const/4 v11, 0x0

    const/4 v12, 0x2

    if-ge v8, v7, :cond_d

    iget-object v13, p0, Ljvb;->e:Ljava/lang/Object;

    check-cast v13, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v13, v8}, Landroidx/wear/ambient/AmbientMode$AmbientController;->d(I)Lmo;

    move-result-object v13

    if-nez v13, :cond_a

    invoke-direct {p0, v8}, Ljvb;->q(I)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_8

    :cond_8
    if-ne v10, v6, :cond_9

    invoke-virtual {p0, v12, v5, v9, v11}, Ljvb;->d(IIILjava/lang/Object;)Lih;

    move-result-object v10

    invoke-direct {p0, v10}, Ljvb;->p(Lih;)V

    const/4 v10, 0x1

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    :goto_7
    const/4 v11, 0x0

    goto :goto_a

    :cond_a
    :goto_8
    if-nez v10, :cond_b

    invoke-virtual {p0, v12, v5, v9, v11}, Ljvb;->d(IIILjava/lang/Object;)Lih;

    move-result-object v10

    invoke-direct {p0, v10}, Ljvb;->o(Lih;)V

    const/4 v10, 0x1

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    :goto_9
    const/4 v11, 0x1

    :goto_a
    if-eqz v10, :cond_c

    sub-int/2addr v8, v9

    sub-int/2addr v7, v9

    const/4 v9, 0x1

    goto :goto_b

    :cond_c
    add-int/lit8 v9, v9, 0x1

    :goto_b
    add-int/2addr v8, v6

    move v10, v11

    goto :goto_6

    :cond_d
    iget v6, v4, Lih;->d:I

    if-eq v9, v6, :cond_e

    invoke-virtual {p0, v4}, Ljvb;->i(Lih;)V

    invoke-virtual {p0, v12, v5, v9, v11}, Ljvb;->d(IIILjava/lang/Object;)Lih;

    move-result-object v4

    goto :goto_c

    :cond_e
    :goto_c
    if-nez v10, :cond_f

    invoke-direct {p0, v4}, Ljvb;->o(Lih;)V

    goto :goto_d

    :cond_f
    invoke-direct {p0, v4}, Ljvb;->p(Lih;)V

    goto :goto_d

    :pswitch_3
    invoke-direct {p0, v4}, Ljvb;->p(Lih;)V

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Ljvb;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final i(Lih;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lih;->c:Ljava/lang/Object;

    iget-object v0, p0, Ljvb;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Laed;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method final j(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lih;

    invoke-virtual {p0, v2}, Ljvb;->i(Lih;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Ljvb;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljvb;->j(Ljava/util/List;)V

    iget-object v0, p0, Ljvb;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljvb;->j(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Ljvb;->b:I

    return-void
.end method

.method public final l(I)Z
    .locals 1

    iget v0, p0, Ljvb;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Ljvb;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
