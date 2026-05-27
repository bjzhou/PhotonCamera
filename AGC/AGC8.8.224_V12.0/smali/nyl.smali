.class final Lnyl;
.super Lnvo;


# instance fields
.field final a:Lnym;

.field b:Lnvq;

.field final synthetic c:Lnyn;


# direct methods
.method public constructor <init>(Lnyn;)V
    .locals 1

    iput-object p1, p0, Lnyl;->c:Lnyn;

    invoke-direct {p0}, Lnvo;-><init>()V

    new-instance v0, Lnym;

    invoke-direct {v0, p1}, Lnym;-><init>(Lnvt;)V

    iput-object v0, p0, Lnyl;->a:Lnym;

    invoke-direct {p0}, Lnyl;->b()Lnvq;

    move-result-object p1

    iput-object p1, p0, Lnyl;->b:Lnvq;

    return-void
.end method

.method private final b()Lnvq;
    .locals 2

    iget-object v0, p0, Lnyl;->a:Lnym;

    invoke-virtual {v0}, Lnym;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnym;->a()Lnvr;

    move-result-object v0

    invoke-virtual {v0}, Lnvt;->r()Lnvq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget-object v0, p0, Lnyl;->b:Lnvq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnvq;->a()B

    move-result v0

    iget-object v1, p0, Lnyl;->b:Lnvq;

    invoke-interface {v1}, Lnvq;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lnyl;->b()Lnvq;

    move-result-object v1

    iput-object v1, p0, Lnyl;->b:Lnvq;

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lnyl;->b:Lnvq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
