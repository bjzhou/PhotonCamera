.class final Lkiy;
.super Lmyk;


# instance fields
.field private final a:Lmwa;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lmyu;

    iget v0, v0, Lmyu;->c:I

    invoke-static {v0}, Lmwa;->j(I)Lmvw;

    move-result-object v0

    check-cast p1, Lmvv;

    invoke-virtual {p1}, Lmvv;->s()Lnad;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    move-result-object p1

    invoke-direct {p0}, Lmyk;-><init>()V

    iput-object p1, p0, Lkiy;->a:Lmwa;

    return-void
.end method

.method private final h(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lkiy;->a:Lmwa;

    invoke-virtual {v0, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    iget-object p1, p0, Lkiy;->a:Lmwa;

    check-cast p1, Lmyz;

    iget p1, p1, Lmyz;->c:I

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-direct {p0, p1}, Lkiy;->h(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p2}, Lkiy;->h(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkiy;

    if-eqz v0, :cond_0

    check-cast p1, Lkiy;

    iget-object v0, p0, Lkiy;->a:Lmwa;

    iget-object p1, p1, Lkiy;->a:Lmwa;

    invoke-virtual {v0, p1}, Lmwa;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lkiy;->a:Lmwa;

    invoke-virtual {v0}, Lmwa;->hashCode()I

    move-result v0

    return v0
.end method
