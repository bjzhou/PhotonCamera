.class public final Ldag;
.super Ljava/lang/Object;

# interfaces
.implements Lknx;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcsd;I)V
    .locals 0

    iput p2, p0, Ldag;->b:I

    iput-object p1, p0, Ldag;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldaj;I)V
    .locals 0

    iput p2, p0, Ldag;->b:I

    iput-object p1, p0, Ldag;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lelj;I)V
    .locals 0

    iput p2, p0, Ldag;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldag;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final h(Lkab;)V
    .locals 6

    iget v0, p0, Ldag;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Ldag;->a:Ljava/lang/Object;

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ldag;->a:Ljava/lang/Object;

    check-cast v0, Lcsd;

    invoke-virtual {v0, p1}, Lcsd;->b(Lkab;)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Ldag;->a:Ljava/lang/Object;

    check-cast v0, Lcsd;

    iget-object v0, v0, Lcsd;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldag;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcsd;

    iget-boolean v2, v2, Lcsd;->e:Z

    if-nez v2, :cond_0

    check-cast v1, Lcsd;

    iget-object v1, v1, Lcsd;->b:Ljvk;

    invoke-virtual {v1, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Ldag;->a:Ljava/lang/Object;

    check-cast v1, Lcsd;

    iget-object v1, v1, Lcsd;->c:Ljvk;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lkab;->b(I)Lkab;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    invoke-static {p1}, Ldaj;->r(Lkab;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldag;->a:Ljava/lang/Object;

    check-cast p1, Ldaj;

    iget-object p1, p1, Ldaj;->a:Ldau;

    invoke-interface {p1}, Ldau;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldag;->a:Ljava/lang/Object;

    check-cast p1, Ldaj;

    invoke-virtual {p1}, Ldaj;->c()V

    return-void

    :cond_1
    iget-object p1, p0, Ldag;->a:Ljava/lang/Object;

    check-cast p1, Ldaj;

    invoke-virtual {p1}, Ldaj;->h()V

    return-void

    :goto_0
    :try_start_1
    move-object v1, p1

    check-cast v1, Lelj;

    iget-object v1, v1, Lelj;->d:Ljava/util/PriorityQueue;

    const/4 v2, 0x0

    new-array v3, v2, [Lelk;

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lelk;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    invoke-interface {v4}, Lelk;->o()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, p1

    check-cast v5, Lelj;

    iget-object v5, v5, Lelj;->l:Lelk;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, p1

    check-cast v5, Lelj;

    invoke-virtual {v5, v4}, Lelj;->g(Lelk;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p1

    check-cast v1, Lelj;

    iget-object v1, v1, Lelj;->l:Lelk;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lelk;->o()Z

    move-result v2

    if-nez v2, :cond_4

    check-cast p1, Lelj;

    invoke-virtual {p1, v1}, Lelj;->g(Lelk;)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
