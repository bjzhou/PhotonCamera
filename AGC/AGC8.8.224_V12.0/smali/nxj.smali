.class public Lnxj;
.super Ljava/lang/Object;


# instance fields
.field protected volatile a:Lnxy;

.field public volatile b:Lnvt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnwh;->a:Lnwh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnvt;
    .locals 1

    iget-object v0, p0, Lnxj;->b:Lnvt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnxj;->b:Lnvt;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnxj;->b:Lnvt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnxj;->b:Lnvt;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lnxj;->a:Lnxy;

    if-nez v0, :cond_2

    sget-object v0, Lnvt;->b:Lnvt;

    iput-object v0, p0, Lnxj;->b:Lnvt;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnxj;->a:Lnxy;

    invoke-interface {v0}, Lnxy;->H()Lnvt;

    move-result-object v0

    iput-object v0, p0, Lnxj;->b:Lnvt;

    :goto_0
    iget-object v0, p0, Lnxj;->b:Lnvt;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lnxy;)Lnxy;
    .locals 1

    iget-object v0, p0, Lnxj;->a:Lnxy;

    if-eqz v0, :cond_0

    :goto_0
    goto :goto_2

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnxj;->a:Lnxy;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    iput-object p1, p0, Lnxj;->a:Lnxy;

    sget-object v0, Lnvt;->b:Lnvt;

    iput-object v0, p0, Lnxj;->b:Lnvt;
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iput-object p1, p0, Lnxj;->a:Lnxy;

    sget-object p1, Lnvt;->b:Lnvt;

    iput-object p1, p0, Lnxj;->b:Lnvt;

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object p1, p0, Lnxj;->a:Lnxy;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lnxj;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lnxj;

    iget-object v0, p0, Lnxj;->a:Lnxy;

    iget-object v1, p1, Lnxj;->a:Lnxy;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnxj;->a()Lnvt;

    move-result-object v0

    invoke-virtual {p1}, Lnxj;->a()Lnvt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnvt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lnxy;->cF()Lnxy;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnxj;->b(Lnxy;)Lnxy;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    invoke-interface {v1}, Lnxy;->cF()Lnxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnxj;->b(Lnxy;)Lnxy;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
