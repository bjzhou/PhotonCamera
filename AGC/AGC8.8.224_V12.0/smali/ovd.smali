.class public abstract Lovd;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field public d:[Lovf;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract e()Lovf;
.end method

.method protected abstract h()[Lovf;
.end method

.method protected final i()Lovf;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lovd;->d:[Lovf;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lovd;->h()[Lovf;

    move-result-object v0

    iput-object v0, p0, Lovd;->d:[Lovf;

    goto :goto_0

    :cond_0
    iget v1, p0, Lovd;->e:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    add-int/2addr v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, [Lovf;

    iput-object v0, p0, Lovd;->d:[Lovf;

    :cond_1
    :goto_0
    iget v1, p0, Lovd;->a:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lovd;->e()Lovf;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v2, p0}, Lovf;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Lovd;->a:I

    iget v0, p0, Lovd;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lovd;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected final j(Lovf;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lovd;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lovd;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lovd;->a:I

    :cond_0
    invoke-virtual {p1, p0}, Lovf;->b(Ljava/lang/Object;)[Loku;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    sget-object v3, Lojk;->a:Lojk;

    invoke-interface {v2, v3}, Loku;->e(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
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
