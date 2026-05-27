.class public final Lqr;
.super Lqt;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lqu;

.field private b:Lqq;

.field private c:Z


# direct methods
.method public constructor <init>(Lqu;)V
    .locals 0

    iput-object p1, p0, Lqr;->a:Lqu;

    invoke-direct {p0}, Lqt;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lqr;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map$Entry;
    .locals 1

    iget-boolean v0, p0, Lqr;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqr;->c:Z

    iget-object v0, p0, Lqr;->a:Lqu;

    iget-object v0, v0, Lqu;->b:Lqq;

    :goto_0
    iput-object v0, p0, Lqr;->b:Lqq;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lqr;->b:Lqq;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lqq;->c:Lqq;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lqr;->b:Lqq;

    return-object v0
.end method

.method public final aY(Lqq;)V
    .locals 1

    iget-object v0, p0, Lqr;->b:Lqq;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Lqq;->d:Lqq;

    iput-object p1, p0, Lqr;->b:Lqq;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lqr;->c:Z

    :cond_1
    return-void
.end method

.method public final hasNext()Z
    .locals 3

    iget-boolean v0, p0, Lqr;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqr;->a:Lqu;

    iget-object v0, v0, Lqu;->b:Lqq;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lqr;->b:Lqq;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lqq;->c:Lqq;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lqr;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
