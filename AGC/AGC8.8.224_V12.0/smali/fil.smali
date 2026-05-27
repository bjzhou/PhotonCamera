.class public final Lfil;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Lfim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/gyro/IncompleteMotionDataFrame"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfil;->b:Lnak;

    return-void
.end method

.method private constructor <init>(Lfim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfil;->a:Lfim;

    return-void
.end method

.method public static d(Lkaf;JI)Lfil;
    .locals 2

    new-instance v0, Lfil;

    new-instance v1, Lfim;

    invoke-direct {v1, p0, p1, p2, p3}, Lfim;-><init>(Lkaf;JI)V

    invoke-direct {v0, v1}, Lfil;-><init>(Lfim;)V

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lfil;->a:Lfim;

    iget-wide v1, v1, Lfim;->b:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lfil;->a:Lfim;

    iget-object v0, v0, Lfim;->c:Lnph;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    iget-object v0, p0, Lfil;->a:Lfim;

    iget-object v0, v0, Lfim;->e:Lnph;

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    iget-object v0, p0, Lfil;->a:Lfim;

    iget-object v0, v0, Lfim;->d:Lnph;

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lfil;->a:Lfim;

    iget-object v0, v0, Lfim;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfil;->a:Lfim;

    iget-object v0, v0, Lfim;->d:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfil;->a:Lfim;

    iget-boolean v0, v0, Lfim;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final e(Lfil;)Z
    .locals 6

    invoke-virtual {p1}, Lfil;->a()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lfil;->a:Lfim;

    iget-wide v3, v3, Lfim;->b:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_5

    iget-object v0, p1, Lfil;->a:Lfim;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lfil;->a:Lfim;

    iget-object v2, v2, Lfim;->d:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lfil;->a:Lfim;

    iget-object v2, v2, Lfim;->d:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p1, Lfil;->a:Lfim;

    iget-object p1, p1, Lfim;->d:Lnph;

    invoke-static {p1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v2, Lfil;->b:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Unexpected exception thrown while fetching values."

    const/16 v5, 0x91a

    invoke-static {v2, v3, v5, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object v2, Lfil;->b:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "Stale encoder frame detected"

    const/16 v5, 0x919

    invoke-static {v2, v3, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_1
    iget-object v0, v0, Lfim;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfil;->a:Lfim;

    iget-object v0, v0, Lfim;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lfil;->a:Lfim;

    iget-object v0, v0, Lfim;->e:Lnph;

    invoke-virtual {v0}, Lnph;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    :goto_1
    return v1

    :cond_5
    return v4
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lfil;->a:Lfim;

    iget-wide v2, v2, Lfim;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lfil;->a:Lfim;

    iget-object v2, v2, Lfim;->c:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lfil;->a:Lfim;

    iget-object v2, v2, Lfim;->d:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lfil;->a:Lfim;

    iget-boolean v2, v2, Lfim;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%d - metadataFuture: %s, videoBufferInfoFuture: %s, largeMetadataTimestampSeen: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
