.class final Lmvs;
.super Lmvv;


# instance fields
.field private final transient a:Lmvv;


# direct methods
.method public constructor <init>(Lmvv;)V
    .locals 0

    invoke-direct {p0}, Lmvv;-><init>()V

    iput-object p1, p0, Lmvs;->a:Lmvv;

    return-void
.end method

.method private final u(I)I
    .locals 1

    invoke-virtual {p0}, Lmvs;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private final w(I)I
    .locals 1

    invoke-virtual {p0}, Lmvs;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final a()Lmvv;
    .locals 1

    iget-object v0, p0, Lmvs;->a:Lmvv;

    return-object v0
.end method

.method public final b(II)Lmvv;
    .locals 1

    invoke-virtual {p0}, Lmvs;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lmoz;->o(III)V

    iget-object v0, p0, Lmvs;->a:Lmvv;

    invoke-direct {p0, p2}, Lmvs;->w(I)I

    move-result p2

    invoke-direct {p0, p1}, Lmvs;->w(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lmvv;->b(II)Lmvv;

    move-result-object p1

    invoke-virtual {p1}, Lmvv;->a()Lmvv;

    move-result-object p1

    return-object p1
.end method

.method public final cA()Z
    .locals 1

    iget-object v0, p0, Lmvs;->a:Lmvv;

    invoke-virtual {v0}, Lmvv;->cA()Z

    move-result v0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmvs;->a:Lmvv;

    invoke-virtual {v0, p1}, Lmvv;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmvs;->size()I

    move-result v0

    invoke-static {p1, v0}, Lmoz;->w(II)V

    iget-object v0, p0, Lmvs;->a:Lmvv;

    invoke-direct {p0, p1}, Lmvs;->u(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lmvs;->a:Lmvv;

    invoke-virtual {v0, p1}, Lmvv;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lmvs;->u(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lmvs;->a:Lmvv;

    invoke-virtual {v0, p1}, Lmvv;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lmvs;->u(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmvs;->a:Lmvv;

    invoke-virtual {v0}, Lmvv;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmvv;->b(II)Lmvv;

    move-result-object p1

    return-object p1
.end method
