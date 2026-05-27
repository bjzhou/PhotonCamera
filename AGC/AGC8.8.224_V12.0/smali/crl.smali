.class public final Lcrl;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:I

.field private final c:I

.field private d:Z

.field private e:J

.field private f:J

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/audio/processor/util/AudioTimestampRangeQueue"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcrl;->a:Lnak;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcrl;->e:J

    iput-wide v0, p0, Lcrl;->f:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lmoz;->e(Z)V

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lmoz;->e(Z)V

    iput p1, p0, Lcrl;->b:I

    iput p2, p0, Lcrl;->c:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)J
    .locals 10

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcrl;->g:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "The polled length %s is greater than total length %s."

    invoke-static {v2, v3, p1, v0}, Lmoz;->k(ZLjava/lang/String;II)V

    iget-wide v2, p0, Lcrl;->e:J

    iget-wide v4, p0, Lcrl;->f:J

    sub-long/2addr v4, v2

    iget v0, p0, Lcrl;->g:I

    int-to-long v6, v0

    int-to-long v8, p1

    mul-long v4, v4, v8

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    if-ne p1, v0, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcrl;->e:J

    iput-wide v4, p0, Lcrl;->f:J

    iput v1, p0, Lcrl;->g:I

    goto :goto_1

    :cond_1
    iput-wide v4, p0, Lcrl;->e:J

    sub-int/2addr v0, p1

    iput v0, p0, Lcrl;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(JI)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-static {v1}, Lmoz;->e(Z)V

    iget-boolean v1, p0, Lcrl;->d:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcrl;->d:Z

    :cond_1
    iget v0, p0, Lcrl;->g:I

    add-int/2addr v0, p3

    iget v1, p0, Lcrl;->c:I

    if-le v0, v1, :cond_2

    sget-object p1, Lcrl;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "The size offered is over the capacity."

    const/16 p3, 0x235

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-wide v0, p0, Lcrl;->e:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    iput-wide p1, p0, Lcrl;->e:J

    :cond_3
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v0

    int-to-long v2, p3

    mul-long v0, v0, v2

    iget v2, p0, Lcrl;->b:I

    const-wide/16 v3, 0x8

    mul-long v0, v0, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcrl;->f:J

    iget p1, p0, Lcrl;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcrl;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
