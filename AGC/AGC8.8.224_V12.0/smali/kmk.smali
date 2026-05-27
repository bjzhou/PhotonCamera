.class final Lkmk;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:Lkah;

.field private d:J

.field private e:J

.field private f:I

.field private g:J

.field private h:J

.field private i:I

.field private final j:Lkgd;


# direct methods
.method public constructor <init>(Lkgd;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkmk;->j:Lkgd;

    iget-object p2, p1, Lkgd;->a:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p2

    iget-object p3, p1, Lkgd;->a:Ljava/lang/Object;

    check-cast p3, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p3

    mul-int p2, p2, p3

    iget-object p1, p1, Lkgd;->a:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getLayers()I

    move-result p1

    mul-int p2, p2, p1

    div-int/lit8 p2, p2, 0x68

    mul-int/lit8 p2, p2, 0x68

    iput p2, p0, Lkmk;->a:I

    new-array p1, p2, [B

    iput-object p1, p0, Lkmk;->b:[B

    new-instance p1, Lkah;

    sget-object p3, Lkmp;->b:Lkmp;

    div-int/lit8 p2, p2, 0x68

    invoke-direct {p1, p3, p2}, Lkah;-><init>(Lkag;I)V

    iput-object p1, p0, Lkmk;->c:Lkah;

    return-void
.end method

.method private final declared-synchronized c()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkmk;->j:Lkgd;

    iget-object v1, p0, Lkmk;->b:[B

    iget v2, p0, Lkmk;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lkgd;->q([BIII)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkmk;->d:J

    iput-wide v0, p0, Lkmk;->e:J

    iput v3, p0, Lkmk;->f:I

    iput-wide v0, p0, Lkmk;->g:J

    iput-wide v0, p0, Lkmk;->h:J

    iput v3, p0, Lkmk;->i:I

    :goto_0
    iget v2, p0, Lkmk;->a:I

    if-ge v3, v2, :cond_3

    iget-object v2, p0, Lkmk;->b:[B

    invoke-static {v2, v3}, Lktf;->g([BI)J

    move-result-wide v4

    iget-wide v6, p0, Lkmk;->e:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    iput-wide v4, p0, Lkmk;->e:J

    iput v3, p0, Lkmk;->f:I

    :cond_0
    cmp-long v2, v4, v0

    if-eqz v2, :cond_2

    iget-wide v6, p0, Lkmk;->h:J

    cmp-long v2, v6, v0

    if-eqz v2, :cond_1

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    :cond_1
    iput-wide v4, p0, Lkmk;->h:J

    iput v3, p0, Lkmk;->i:I

    :cond_2
    add-int/lit8 v3, v3, 0x68

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lkmk;->e:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_4

    iget-object v2, p0, Lkmk;->b:[B

    iget v3, p0, Lkmk;->f:I

    invoke-static {v2, v3}, Lktf;->h([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lkmk;->d:J

    :cond_4
    iget-wide v2, p0, Lkmk;->h:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_5

    iget-object v0, p0, Lkmk;->b:[B

    iget v1, p0, Lkmk;->i:I

    invoke-static {v0, v1}, Lktf;->h([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lkmk;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final declared-synchronized d()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lkmk;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v0, p0, Lkmk;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lkmk;->f:I

    invoke-direct {p0, v0}, Lkmk;->e(I)V

    iget-object v0, p0, Lkmk;->b:[B

    iget v1, p0, Lkmk;->f:I

    invoke-static {v0, v1}, Lktf;->g([BI)J

    move-result-wide v0

    iget-wide v4, p0, Lkmk;->e:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lkmk;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lkmk;->f:I

    add-int/lit8 v0, v0, 0x68

    iget v1, p0, Lkmk;->a:I

    rem-int/2addr v0, v1

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :goto_0
    invoke-direct {p0, v0}, Lkmk;->e(I)V

    iget-object v1, p0, Lkmk;->b:[B

    invoke-static {v1, v0}, Lktf;->g([BI)J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-nez v1, :cond_2

    iput v0, p0, Lkmk;->f:I

    iput-wide v4, p0, Lkmk;->e:J

    iget-object v1, p0, Lkmk;->b:[B

    invoke-static {v1, v0}, Lktf;->h([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lkmk;->d:J

    add-int/lit8 v0, v0, 0x68

    iget v1, p0, Lkmk;->a:I

    rem-int/2addr v0, v1

    add-long/2addr v4, v6

    goto :goto_0

    :cond_2
    cmp-long v1, v8, v2

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lkmk;->h:J

    cmp-long v3, v8, v1

    if-lez v3, :cond_3

    iput v0, p0, Lkmk;->i:I

    iput-wide v8, p0, Lkmk;->h:J

    iget-object v1, p0, Lkmk;->b:[B

    invoke-static {v1, v0}, Lktf;->h([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lkmk;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lkmk;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final declared-synchronized e(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkmk;->j:Lkgd;

    iget-object v1, p0, Lkmk;->b:[B

    const/16 v2, 0x68

    invoke-virtual {v0, v1, p1, p1, v2}, Lkgd;->q([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(JJLjava/util/List;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-interface {p5}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lkmk;->d()V

    iget-wide v0, p0, Lkmk;->d:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_5

    iget-wide v0, p0, Lkmk;->g:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-wide v2, p0, Lkmk;->h:J

    iget v4, p0, Lkmk;->i:I

    :goto_0
    cmp-long v5, v0, p1

    if-ltz v5, :cond_1

    cmp-long v5, v0, p3

    if-gtz v5, :cond_1

    iget-object v0, p0, Lkmk;->c:Lkah;

    invoke-virtual {v0}, Lkah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkmo;

    iget-object v1, p0, Lkmk;->b:[B

    invoke-static {v1, v4}, Lktf;->f([BI)I

    move-result v5

    iput v5, v0, Lkmo;->a:I

    add-int/lit8 v5, v4, 0x4

    invoke-static {v1, v5}, Lktf;->f([BI)I

    move-result v5

    iput v5, v0, Lkmo;->b:I

    add-int/lit8 v5, v4, 0x8

    invoke-static {v1, v5}, Lktf;->f([BI)I

    move-result v5

    iput v5, v0, Lkmo;->c:I

    invoke-static {v1, v4}, Lktf;->g([BI)J

    move-result-wide v5

    iput-wide v5, v0, Lkmo;->d:J

    invoke-static {v1, v4}, Lktf;->h([BI)J

    move-result-wide v5

    iput-wide v5, v0, Lkmo;->e:J

    add-int/lit8 v5, v4, 0x18

    invoke-static {v1, v5}, Lktf;->e([BI)F

    move-result v5

    iput v5, v0, Lkmo;->f:F

    add-int/lit8 v5, v4, 0x1c

    invoke-static {v1, v5}, Lktf;->e([BI)F

    move-result v5

    iput v5, v0, Lkmo;->g:F

    add-int/lit8 v5, v4, 0x20

    invoke-static {v1, v5}, Lktf;->e([BI)F

    move-result v1

    iput v1, v0, Lkmo;->h:F

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x68

    iget v0, p0, Lkmk;->a:I

    if-lt v4, v0, :cond_2

    const/4 v0, 0x0

    const/4 v4, 0x0

    :cond_2
    iget-object v0, p0, Lkmk;->b:[B

    invoke-static {v0, v4}, Lktf;->g([BI)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_4

    cmp-long v5, v0, v2

    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lkmk;->b:[B

    invoke-static {v2, v4}, Lktf;->h([BI)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v2, p3

    if-gtz v5, :cond_4

    move-wide v8, v0

    move-wide v0, v2

    move-wide v2, v8

    goto :goto_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method final declared-synchronized b(Ljava/util/List;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkmo;

    iget-object v2, p0, Lkmk;->c:Lkah;

    invoke-virtual {v2, v1}, Lkah;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V
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
