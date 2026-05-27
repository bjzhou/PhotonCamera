.class public final Lctj;
.super Lkfg;


# instance fields
.field final synthetic a:Lctl;


# direct methods
.method public constructor <init>(Lctl;)V
    .locals 0

    iput-object p1, p0, Lctj;->a:Lctl;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bh(Lkfj;J)V
    .locals 2

    iget-object v0, p0, Lctj;->a:Lctl;

    iget-object v0, v0, Lctl;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lctj;->a:Lctl;

    iget-object v1, v1, Lctl;->k:Lkfj;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lctl;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x264

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "onBufferLost in viewfinderStream => frame number: %d"

    invoke-interface {p1, v1, p2, p3}, Lnah;->q(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lctj;->a:Lctl;

    iget-object v1, v1, Lctl;->l:Lkfj;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lctl;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x263

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "onBufferLost in recordingStream => frame number: %d"

    invoke-interface {p1, v1, p2, p3}, Lnah;->q(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
