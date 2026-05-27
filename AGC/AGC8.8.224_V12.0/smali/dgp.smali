.class public final Ldgp;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field private b:J

.field private c:I

.field private final d:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldgp;->b:J

    const/4 v0, 0x0

    iput v0, p0, Ldgp;->c:I

    iput p1, p0, Ldgp;->d:I

    iput-wide p2, p0, Ldgp;->a:J

    return-void
.end method


# virtual methods
.method final declared-synchronized a(J)Lnij;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ldgp;->a:J

    sub-long/2addr p1, v0

    sget-object v0, Lnij;->f:Lnij;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget v1, p0, Ldgp;->d:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnij;

    add-int/lit8 v1, v1, -0x1

    iput v1, v3, Lnij;->b:I

    iget v1, v3, Lnij;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v3, Lnij;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnij;

    iget v3, v2, Lnij;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lnij;->a:I

    iput-wide p1, v2, Lnij;->c:J

    iget-wide p1, p0, Ldgp;->b:J

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnij;

    iget v3, v2, Lnij;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lnij;->a:I

    iput-wide p1, v2, Lnij;->d:J

    iget p1, p0, Ldgp;->c:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Lnij;

    iget v1, p2, Lnij;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p2, Lnij;->a:I

    iput p1, p2, Lnij;->e:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnij;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldgp;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldgp;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ldgp;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldgp;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
