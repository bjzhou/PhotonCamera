.class public final Lhcp;
.super Ljava/lang/Object;

# interfaces
.implements Lgxm;


# instance fields
.field public final synthetic a:Lhcq;

.field private final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lhcq;)V
    .locals 0

    iput-object p1, p0, Lhcp;->a:Lhcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lhcp;->b:Ljava/util/Set;

    return-void
.end method

.method private final declared-synchronized a(Lgxy;Lgya;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lgya;->a:Lgya;

    invoke-virtual {p2}, Lgya;->ordinal()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :sswitch_0
    :try_start_1
    iget-object p2, p0, Lhcp;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhcp;->a:Lhcq;

    iget-object p1, p1, Lhcq;->b:Ljuh;

    new-instance p2, Lhbi;

    const/4 v0, 0x7

    invoke-direct {p2, p0, v0}, Lhbi;-><init>(Lhcp;I)V

    invoke-virtual {p1, p2}, Ljuh;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0xc -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private final declared-synchronized b(Lgxy;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhcp;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhcp;->a:Lhcq;

    iget-object p1, p1, Lhcq;->c:Landroid/os/Handler;

    new-instance v0, Lhbi;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lhbi;-><init>(Lhcp;I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final j(Lgxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lhcp;->b(Lgxy;)V

    return-void
.end method

.method public final synthetic k(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final l(Lgxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lhcp;->b(Lgxy;)V

    return-void
.end method

.method public final synthetic m(J)V
    .locals 0

    return-void
.end method

.method public final synthetic n(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final synthetic o(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p0, p1}, Ljhp;->aw(Lgxm;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic p(Lgxy;Lkae;)V
    .locals 0

    return-void
.end method

.method public final q(Lgxy;Lgxt;Lgyb;)V
    .locals 0

    iget-object p2, p2, Lgxt;->c:Lgya;

    invoke-direct {p0, p1, p2}, Lhcp;->a(Lgxy;Lgya;)V

    return-void
.end method

.method public final synthetic r(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final x(Lgxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lhcp;->b(Lgxy;)V

    return-void
.end method
