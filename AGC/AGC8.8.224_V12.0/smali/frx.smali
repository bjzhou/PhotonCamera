.class public final Lfrx;
.super Ljava/lang/Object;

# interfaces
.implements Lfri;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final b:Lfri;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/moments/SafeMomentsTrackEncoder"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfrx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lfrx;->c:I

    iput-object p1, p0, Lfrx;->b:Lfri;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkxy;Lkab;)Lfpz;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lfrx;->c:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfrx;->c:I

    new-instance v0, Lfrw;

    iget-object v1, p0, Lfrx;->b:Lfri;

    invoke-interface {v1, p1, p2}, Lfri;->a(Lkxy;Lkab;)Lfpz;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lfrw;-><init>(Lfrx;Lfpz;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object p2, Lfrx;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0x9b3

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v0, "Attempting to launch already-closed MomentsTrackEncoder!"

    invoke-interface {p2, v0}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    sget-object v0, Lfrx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Cannot create MomentsTrackEncoder! Moments will be disabled!"

    const/16 v2, 0x9b4

    invoke-static {v0, v1, v2, p2}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_0
    invoke-interface {p1}, Lkxy;->close()V

    new-instance p1, Lfrv;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lfrv;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lfrx;->c:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lfrx;->b:Lfri;

    invoke-interface {v0}, Lfri;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lfrx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Failed to prewarm MomentsTrackEncoder! Will instantiate during snapshot."

    const/16 v3, 0x9b5

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lfrx;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfrx;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lfrx;->b:Lfri;

    invoke-interface {v0}, Lfri;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lfrx;->c()V

    return-void
.end method
