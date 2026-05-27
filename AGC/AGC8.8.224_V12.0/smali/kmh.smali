.class public final Lkmh;
.super Lkoz;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>(Lkpe;)V
    .locals 0

    invoke-direct {p0, p1}, Lkoz;-><init>(Lkpe;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkmh;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lkmh;->b:I

    return-void
.end method

.method private final j(Lkpb;)Lkpb;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lkmh;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkmh;->b:I

    new-instance v0, Lkmg;

    invoke-direct {v0, p0, p1}, Lkmg;-><init>(Lkmh;Lkpb;)V

    return-object v0
.end method


# virtual methods
.method public final f()Lkpb;
    .locals 3

    iget-object v0, p0, Lkmh;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lkmh;->b:I

    invoke-virtual {p0}, Lkoz;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lkoz;->f()Lkpb;

    move-result-object v1

    invoke-direct {p0, v1}, Lkmh;->j(Lkpb;)Lkpb;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Lkpb;
    .locals 3

    iget-object v0, p0, Lkmh;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lkmh;->b:I

    invoke-virtual {p0}, Lkoz;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lkoz;->g()Lkpb;

    move-result-object v1

    invoke-direct {p0, v1}, Lkmh;->j(Lkpb;)Lkpb;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
