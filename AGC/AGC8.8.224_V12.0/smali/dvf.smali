.class final Ldvf;
.super Ljava/lang/Object;

# interfaces
.implements Ldsy;


# instance fields
.field private final a:Ldsx;

.field private final b:I

.field private final c:I

.field private final d:Ldve;

.field private final e:Ldtd;


# direct methods
.method public constructor <init>(Ldsx;IILdve;Ldtd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldvf;->a:Ldsx;

    iput p2, p0, Ldvf;->b:I

    iput p3, p0, Ldvf;->c:I

    iput-object p4, p0, Ldvf;->d:Ldve;

    iput-object p5, p0, Ldvf;->e:Ldtd;

    return-void
.end method


# virtual methods
.method public final a(J)F
    .locals 2

    iget v0, p0, Ldvf;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    invoke-virtual {p0, p1, p2}, Ldvf;->c(J)Ldsv;

    move-result-object p1

    invoke-virtual {p1}, Ldsv;->a()F

    move-result p1

    return p1
.end method

.method public final b()J
    .locals 3

    iget-object v0, p0, Ldvf;->e:Ldtd;

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2}, Ldtd;->a(J)Ldti;

    move-result-object v0

    invoke-interface {v0}, Ldti;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ldti;->a()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c(J)Ldsv;
    .locals 8

    const-wide v0, 0x7ffffffffffffffeL

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 p1, 0x1

    add-long/2addr p1, v3

    iget-object v0, p0, Ldvf;->e:Ldtd;

    invoke-interface {v0, p1, p2}, Ldtd;->a(J)Ldti;

    move-result-object p1

    invoke-interface {p1}, Ldti;->c()Z

    move-result p2

    invoke-interface {p1}, Ldti;->a()J

    move-result-wide v0

    invoke-interface {p1}, Ldti;->b()Z

    move-result v2

    invoke-interface {p1}, Ldti;->a()J

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    iget-object p1, p0, Ldvf;->a:Ldsx;

    invoke-static {p1, v3, v4}, Ldsv;->c(Ldsx;J)Ldsv;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Ldvf;->a:Ldsx;

    invoke-static {p1, v3, v4}, Ldsv;->c(Ldsx;J)Ldsv;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget p1, p0, Ldvf;->c:I

    new-array v5, p1, [F

    iget-object p1, p0, Ldvf;->d:Ldve;

    invoke-interface {p1, v0, v1, v5}, Ldve;->a(J[F)I

    move-result v7

    iget-object v2, p0, Ldvf;->a:Ldsx;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final d()Ldsv;
    .locals 2

    invoke-virtual {p0}, Ldvf;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ldvf;->c(J)Ldsv;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 5

    invoke-virtual {p0}, Ldvf;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(JI)Ljava/util/List;
    .locals 11

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-static {v3}, Lmoz;->e(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Ldvf;->c:I

    new-array v1, v1, [F

    const-wide/16 v9, 0x0

    cmp-long v3, p1, v9

    if-gtz v3, :cond_1

    iget-object v3, p0, Ldvf;->e:Ldtd;

    const-wide/16 v4, -0x1

    add-long/2addr p1, v4

    invoke-interface {v3, p1, p2}, Ldtd;->a(J)Ldti;

    move-result-object p1

    :goto_1
    if-ge v2, p3, :cond_2

    invoke-interface {p1}, Ldti;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ldti;->a()J

    move-result-wide v3

    cmp-long p2, v3, v9

    if-gtz p2, :cond_2

    iget-object p2, p0, Ldvf;->d:Ldve;

    invoke-interface {p1}, Ldti;->a()J

    move-result-wide v3

    invoke-interface {p2, v3, v4, v1}, Ldve;->a(J[F)I

    move-result v8

    iget-object v3, p0, Ldvf;->a:Ldsx;

    invoke-interface {p1}, Ldti;->a()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v6, v1

    invoke-static/range {v3 .. v8}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Ldvf;->e:Ldtd;

    const-wide/16 v4, 0x1

    add-long/2addr p1, v4

    invoke-interface {v3, p1, p2}, Ldtd;->a(J)Ldti;

    move-result-object p1

    :goto_2
    if-ge v2, p3, :cond_2

    invoke-interface {p1}, Ldti;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ldti;->a()J

    move-result-wide v3

    cmp-long p2, v3, v9

    if-ltz p2, :cond_2

    iget-object p2, p0, Ldvf;->d:Ldve;

    invoke-interface {p1}, Ldti;->a()J

    move-result-wide v3

    invoke-interface {p2, v3, v4, v1}, Ldve;->a(J[F)I

    move-result v8

    iget-object v3, p0, Ldvf;->a:Ldsx;

    invoke-interface {p1}, Ldti;->a()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v6, v1

    invoke-static/range {v3 .. v8}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method
