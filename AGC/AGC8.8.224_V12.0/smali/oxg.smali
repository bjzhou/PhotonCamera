.class public Loxg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Loon;

.field public b:[Loxh;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lolp;->i(I)Loon;

    move-result-object v0

    iput-object v0, p0, Loxg;->a:Loon;

    return-void
.end method

.method private final h(II)V
    .locals 3

    iget-object v0, p0, Loxg;->b:[Loxh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v1, v0, p1

    aput-object v2, v0, p2

    invoke-interface {v1, p1}, Loxh;->f(I)V

    invoke-interface {v2, p2}, Loxh;->f(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Loxg;->a:Loon;

    iget v0, v0, Loon;->b:I

    return v0
.end method

.method public final b()Loxh;
    .locals 2

    iget-object v0, p0, Loxg;->b:[Loxh;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Loxh;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Loxg;->b()Loxh;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(I)Loxh;
    .locals 7

    sget-boolean v0, Lopw;->a:Z

    iget-object v0, p0, Loxg;->b:[Loxh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Loxg;->a()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Loxg;->e(I)V

    invoke-virtual {p0}, Loxg;->a()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {p0}, Loxg;->a()I

    move-result v1

    invoke-direct {p0, p1, v1}, Loxg;->h(II)V

    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_0

    div-int/lit8 v1, v1, 0x2

    aget-object v3, v0, p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    invoke-direct {p0, p1, v1}, Loxg;->h(II)V

    invoke-virtual {p0, v1}, Loxg;->f(I)V

    goto :goto_1

    :cond_0
    :goto_0
    add-int v1, p1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Loxg;->a()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Loxg;->b:[Loxh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Loxg;->a()I

    move-result v5

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    move v1, v4

    :cond_1
    aget-object v4, v3, p1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Comparable;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2

    invoke-direct {p0, p1, v1}, Loxg;->h(II)V

    move p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Loxg;->a()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Loxh;->e(Loxg;)V

    invoke-interface {p1, v2}, Loxh;->f(I)V

    invoke-virtual {p0}, Loxg;->a()I

    move-result v2

    aput-object v1, v0, v2

    return-object p1
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Loxg;->a:Loon;

    iput p1, v0, Loon;->b:I

    return-void
.end method

.method public final f(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Loxg;->b:[Loxh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, p1, -0x1

    shr-int/lit8 v1, v1, 0x1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, v1}, Loxg;->h(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Loxg;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
