.class final Lzf;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field b:Lzi;

.field final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lzi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzf;->b:Lzi;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzf;->c:Ljava/util/ArrayList;

    sget v0, Lzf;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lzf;->a:I

    iput-object p1, p0, Lzf;->b:Lzi;

    return-void
.end method


# virtual methods
.method public final a(Lyz;J)J
    .locals 8

    iget-object v0, p1, Lyz;->d:Lzi;

    instance-of v1, v0, Lzd;

    if-eqz v1, :cond_0

    return-wide p2

    :cond_0
    iget-object v1, p1, Lyz;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-wide v3, p2

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v5, p1, Lyz;->j:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyx;

    instance-of v6, v5, Lyz;

    if-eqz v6, :cond_2

    check-cast v5, Lyz;

    iget-object v6, v5, Lyz;->d:Lzi;

    if-ne v6, v0, :cond_1

    goto :goto_1

    :cond_1
    iget v6, v5, Lyz;->e:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    invoke-virtual {p0, v5, v6, v7}, Lzf;->a(Lyz;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lzi;->j:Lyz;

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Lzi;->a()J

    move-result-wide v1

    iget-object p1, v0, Lzi;->i:Lyz;

    sub-long/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lzf;->a(Lyz;J)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object p1, v0, Lzi;->i:Lyz;

    iget p1, p1, Lyz;->e:I

    int-to-long v3, p1

    sub-long/2addr p2, v3

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v3
.end method

.method public final b(Lyz;J)J
    .locals 8

    iget-object v0, p1, Lyz;->d:Lzi;

    instance-of v1, v0, Lzd;

    if-eqz v1, :cond_0

    return-wide p2

    :cond_0
    iget-object v1, p1, Lyz;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-wide v3, p2

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v5, p1, Lyz;->j:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyx;

    instance-of v6, v5, Lyz;

    if-eqz v6, :cond_2

    check-cast v5, Lyz;

    iget-object v6, v5, Lyz;->d:Lzi;

    if-ne v6, v0, :cond_1

    goto :goto_1

    :cond_1
    iget v6, v5, Lyz;->e:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    invoke-virtual {p0, v5, v6, v7}, Lzf;->b(Lyz;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lzi;->i:Lyz;

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Lzi;->a()J

    move-result-wide v1

    iget-object p1, v0, Lzi;->j:Lyz;

    add-long/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lzf;->b(Lyz;J)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object p1, v0, Lzi;->j:Lyz;

    iget p1, p1, Lyz;->e:I

    int-to-long v3, p1

    sub-long/2addr p2, v3

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v3
.end method
