.class public final Lbhl;
.super Lbgv;


# instance fields
.field private final c:Lbjq;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lbhs;

.field private g:Lbhs;


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Lbjn;)V
    .locals 11

    iget v0, p3, Lbjn;->i:I

    invoke-static {v0}, Lbze;->Y(I)Landroid/graphics/Paint$Cap;

    move-result-object v4

    iget v0, p3, Lbjn;->j:I

    invoke-static {v0}, Lbze;->W(I)Landroid/graphics/Paint$Join;

    move-result-object v5

    iget v6, p3, Lbjn;->g:F

    iget-object v7, p3, Lbjn;->e:Lbir;

    iget-object v8, p3, Lbjn;->f:Lbip;

    iget-object v9, p3, Lbjn;->c:Ljava/util/List;

    iget-object v10, p3, Lbjn;->b:Lbip;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lbgv;-><init>(Lbgj;Lbjq;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLbir;Lbip;Ljava/util/List;Lbip;)V

    iput-object p2, p0, Lbhl;->c:Lbjq;

    iget-object p1, p3, Lbjn;->a:Ljava/lang/String;

    iput-object p1, p0, Lbhl;->d:Ljava/lang/String;

    iget-boolean p1, p3, Lbjn;->h:Z

    iput-boolean p1, p0, Lbhl;->e:Z

    iget-object p1, p3, Lbjn;->d:Lbio;

    invoke-virtual {p1}, Lbio;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhl;->f:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lbhl;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbhl;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lbhl;->f:Lbhs;

    check-cast v1, Lbht;

    invoke-virtual {v1}, Lbht;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lbhl;->g:Lbhs;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbhl;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lbgv;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final f(Ljava/lang/Object;Lbkc;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lbgv;->f(Ljava/lang/Object;Lbkc;)V

    sget-object v0, Lbgo;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lbhl;->f:Lbhs;

    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_0
    sget-object v0, Lbgo;->E:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lbhl;->g:Lbhs;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lbhl;->c:Lbjq;

    invoke-virtual {v0, p1}, Lbjq;->j(Lbhs;)V

    :cond_1
    new-instance p1, Lbig;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbhl;->g:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbhl;->c:Lbjq;

    iget-object p2, p0, Lbhl;->f:Lbhs;

    invoke-virtual {p1, p2}, Lbjq;->h(Lbhs;)V

    :cond_2
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbhl;->d:Ljava/lang/String;

    return-object v0
.end method
