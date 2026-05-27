.class public final Lend;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lend;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lend;->a:I

    iput-object p1, p0, Lend;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lend;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkbc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lend;->a:I

    const-string v0, "AliveLock"

    invoke-interface {p1, v0}, Lkbc;->b(Ljava/lang/String;)Lkbh;

    move-result-object p1

    iput-object p1, p0, Lend;->b:Ljava/lang/Object;

    return-void
.end method

.method private final l()V
    .locals 2

    iget-object v0, p0, Lend;->b:Ljava/lang/Object;

    iget v1, p0, Lend;->a:I

    invoke-interface {v0, v1}, Lkbh;->c(I)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lend;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lend;->a:I

    invoke-direct {p0}, Lend;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lend;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lend;->a:I

    invoke-direct {p0}, Lend;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lend;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()C
    .locals 3

    iget v0, p0, Lend;->a:I

    iget-object v1, p0, Lend;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(I)C
    .locals 2

    iget-object v0, p0, Lend;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Ljava/lang/String;I)I
    .locals 5

    iget v0, p0, Lend;->a:I

    invoke-virtual {p0, v0}, Lend;->e(I)C

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    iget v3, p0, Lend;->a:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lend;->a:I

    invoke-virtual {p0, v3}, Lend;->e(I)C

    move-result v3

    add-int/2addr v2, v0

    move v0, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_3

    if-le v2, p2, :cond_1

    return p2

    :cond_1
    if-gez v2, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    new-instance p2, Lbeq;

    const/4 v0, 0x5

    invoke-direct {p2, p1, v0}, Lbeq;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lend;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 1

    iget v0, p0, Lend;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lend;->a:I

    return-void
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lend;->a:I

    iget-object v1, p0, Lend;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lend;->a:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lend;->b:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v3, v2, v0

    aput-object v1, v2, v0

    iput v0, p0, Lend;->a:I

    return-object v3

    :cond_0
    return-object v1
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lend;->a:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lend;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lend;->a:I

    :cond_0
    return-void
.end method
