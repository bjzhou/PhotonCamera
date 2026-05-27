.class public final synthetic Ljso;
.super Ljava/lang/Object;

# interfaces
.implements Ljfh;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljde;Ljfb;Ljnt;I[B)V
    .locals 0

    iput p4, p0, Ljso;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljso;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljso;->a:Ljava/lang/Object;

    iput-object p3, p0, Ljso;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljqb;Ljfb;[Landroid/content/IntentFilter;I)V
    .locals 0

    iput p4, p0, Ljso;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljso;->a:Ljava/lang/Object;

    iput-object p2, p0, Ljso;->b:Ljava/lang/Object;

    iput-object p3, p0, Ljso;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Ljso;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljso;->b:Ljava/lang/Object;

    iget-object v1, p0, Ljso;->a:Ljava/lang/Object;

    iget-object v2, p0, Ljso;->c:Ljava/lang/Object;

    check-cast p1, Ljpt;

    new-instance v10, Ljnt;

    check-cast v1, Ljfb;

    const/4 v3, 0x2

    invoke-direct {v10, v1, v3}, Ljnt;-><init>(Ljfb;I)V

    new-instance v1, Ljpe;

    move-object v4, v0

    check-cast v4, Ljde;

    move-object v5, p2

    check-cast v5, Lkgd;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Ljpe;-><init>(Ljde;Lkgd;Ljnt;[B[B[B)V

    check-cast v2, Ljnt;

    invoke-virtual {p1, v2, v10, v1}, Ljpt;->I(Ljnt;Ljnt;Ljed;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ljso;->a:Ljava/lang/Object;

    iget-object v1, p0, Ljso;->b:Ljava/lang/Object;

    iget-object v2, p0, Ljso;->c:Ljava/lang/Object;

    check-cast p1, Ljtk;

    new-instance v3, Ljte;

    check-cast p2, Lkgd;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p2, v4, v5, v5}, Ljte;-><init>(Lkgd;I[B[B)V

    iget-object p2, p1, Ljtk;->a:Lkgd;

    new-instance v4, Ljtl;

    check-cast v2, [Landroid/content/IntentFilter;

    invoke-direct {v4, v2}, Ljtl;-><init>([Landroid/content/IntentFilter;)V

    check-cast v1, Ljfb;

    iput-object v1, v4, Ljtl;->a:Ljfb;

    iget-object v1, p2, Lkgd;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p2, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0xfa1

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v3, p1}, Ljed;->c(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p2, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljgb;->u()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Ljsi;

    new-instance v2, Ljsj;

    iget-object v5, p2, Lkgd;->a:Ljava/lang/Object;

    invoke-direct {v2, v5, v0, v3}, Ljsj;-><init>(Ljava/util/Map;Ljava/lang/Object;Ljed;)V

    new-instance v3, Ljqj;

    invoke-direct {v3, v4}, Ljqj;-><init>(Ljtl;)V

    invoke-virtual {p1, v2, v3}, Ljsi;->e(Ljse;Ljqj;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p2, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
