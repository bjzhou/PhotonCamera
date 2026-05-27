.class public final Lkgq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmwn;

.field public final b:Lmwn;

.field public final c:Lmwn;

.field public final d:Lmwn;

.field public final e:I

.field public final f:J

.field private final g:I

.field private final h:Lmrl;


# direct methods
.method public constructor <init>(Lmwn;Lmwn;Lmwn;Lmwn;ILmrl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->e(Z)V

    const/4 v0, -0x1

    if-gtz p5, :cond_1

    if-ne p5, v0, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "Capacity %s must be greater than 0, or -1 to indicate that capacity is not tracked."

    invoke-static {v1, v0, p5}, Lmoz;->h(ZLjava/lang/String;I)V

    iput-object p1, p0, Lkgq;->c:Lmwn;

    iput-object p2, p0, Lkgq;->a:Lmwn;

    iput-object p3, p0, Lkgq;->b:Lmwn;

    iput-object p4, p0, Lkgq;->d:Lmwn;

    iput p5, p0, Lkgq;->e:I

    iput-object p6, p0, Lkgq;->h:Lmrl;

    invoke-static {p2}, Lktf;->i(Ljava/util/Collection;)J

    move-result-wide p1

    iput-wide p1, p0, Lkgq;->f:J

    const-class p1, Lkhv;

    monitor-enter p1

    :try_start_0
    sget p2, Lkhv;->a:I

    add-int/lit8 p3, p2, 0x1

    sput p3, Lkhv;->a:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p2, p0, Lkgq;->g:I

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lkgq;->h:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lkgq;->d:Lmwn;

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lkgq;->c:Lmwn;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lkgq;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameStream-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
