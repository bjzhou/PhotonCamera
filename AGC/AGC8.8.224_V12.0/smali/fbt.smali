.class public final Lfbt;
.super Ljava/lang/Object;

# interfaces
.implements Lfca;


# instance fields
.field private final a:Lnak;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com/google/android/apps/camera/logging/LogcatCameraEventLogger"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    iput-object v0, p0, Lfbt;->a:Lnak;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lngr;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfbt;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x83c

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget v1, p1, Lngr;->d:I

    invoke-static {v1}, Lngq;->b(I)Lngq;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lngq;->a:Lngq;

    :cond_0
    const-string v2, "----------------------\nStart event: %s"

    invoke-interface {v0, v2, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnws;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lfbt;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0x83e

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "%s"

    invoke-interface {v4, v5, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfbt;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x83d

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget p1, p1, Lngr;->d:I

    invoke-static {p1}, Lngq;->b(I)Lngq;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lngq;->a:Lngq;

    :cond_2
    const-string v1, "End Event: %s\n"

    invoke-interface {v0, v1, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
