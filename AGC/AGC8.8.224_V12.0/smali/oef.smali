.class public final Loef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Leji;I)V
    .locals 0

    iput p2, p0, Loef;->b:I

    iput-object p1, p0, Loef;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Loeg;I)V
    .locals 0

    iput p2, p0, Loef;->b:I

    iput-object p1, p0, Loef;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget p1, p0, Loef;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Loef;->a:Ljava/lang/Object;

    check-cast p1, Leji;

    iget-object p1, p1, Leji;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Leji;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Skipped a camera frame"

    const/16 v1, 0x5fa

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :pswitch_0
    iget-object p1, p0, Loef;->a:Ljava/lang/Object;

    check-cast p1, Loeg;

    iget-object p1, p1, Loeg;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object p1, p0, Loef;->a:Ljava/lang/Object;

    check-cast p1, Loeg;

    iget-object p1, p1, Loeg;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Loef;->a:Ljava/lang/Object;

    check-cast v0, Loeg;

    iget-boolean v0, v0, Loeg;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Loef;->a:Ljava/lang/Object;

    check-cast v0, Loeg;

    iget-object v0, v0, Loeg;->b:Loeh;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Loeh;->b()V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
