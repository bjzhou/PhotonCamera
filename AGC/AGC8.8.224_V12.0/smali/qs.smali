.class public abstract Lqs;
.super Lqt;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lqq;

.field b:Lqq;


# direct methods
.method public constructor <init>(Lqq;Lqq;)V
    .locals 0

    invoke-direct {p0}, Lqt;-><init>()V

    iput-object p2, p0, Lqs;->a:Lqq;

    iput-object p1, p0, Lqs;->b:Lqq;

    return-void
.end method

.method private final d()Lqq;
    .locals 2

    iget-object v0, p0, Lqs;->b:Lqq;

    iget-object v1, p0, Lqs;->a:Lqq;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lqs;->b(Lqq;)Lqq;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract a(Lqq;)Lqq;
.end method

.method public final aY(Lqq;)V
    .locals 1

    iget-object v0, p0, Lqs;->a:Lqq;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lqs;->b:Lqq;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lqs;->b:Lqq;

    iput-object v0, p0, Lqs;->a:Lqq;

    :cond_0
    iget-object v0, p0, Lqs;->a:Lqq;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lqs;->a(Lqq;)Lqq;

    move-result-object v0

    iput-object v0, p0, Lqs;->a:Lqq;

    :cond_1
    iget-object v0, p0, Lqs;->b:Lqq;

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Lqs;->d()Lqq;

    move-result-object p1

    iput-object p1, p0, Lqs;->b:Lqq;

    :cond_2
    return-void
.end method

.method public abstract b(Lqq;)Lqq;
.end method

.method public final c()Ljava/util/Map$Entry;
    .locals 2

    iget-object v0, p0, Lqs;->b:Lqq;

    invoke-direct {p0}, Lqs;->d()Lqq;

    move-result-object v1

    iput-object v1, p0, Lqs;->b:Lqq;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lqs;->b:Lqq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lqs;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
