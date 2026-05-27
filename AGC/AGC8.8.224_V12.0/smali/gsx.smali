.class public final Lgsx;
.super Ljava/lang/Object;


# instance fields
.field public final a:[Lgsw;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:J


# direct methods
.method public constructor <init>(Locj;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Locj;->j:F

    iput v0, p0, Lgsx;->b:F

    iget-object v0, p1, Locj;->i:Loci;

    if-nez v0, :cond_0

    sget-object v0, Loci;->i:Loci;

    :cond_0
    iget v0, v0, Loci;->e:F

    iget-object v0, p1, Locj;->i:Loci;

    if-nez v0, :cond_1

    sget-object v1, Loci;->i:Loci;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget v1, v1, Loci;->g:F

    iput v1, p0, Lgsx;->c:F

    if-nez v0, :cond_2

    sget-object v1, Loci;->i:Loci;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iget v1, v1, Loci;->f:F

    iput v1, p0, Lgsx;->d:F

    if-nez v0, :cond_3

    sget-object v0, Loci;->i:Loci;

    goto :goto_2

    :cond_3
    :goto_2
    iget v0, v0, Loci;->h:F

    iput v0, p0, Lgsx;->e:F

    iget-wide v0, p1, Locj;->c:J

    iput-wide v0, p0, Lgsx;->f:J

    iget-object v0, p1, Locj;->e:Lobf;

    if-nez v0, :cond_4

    sget-object v0, Lobf;->b:Lobf;

    :cond_4
    iget-object v1, v0, Lobf;->a:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    new-array v1, v1, [Lgsw;

    iput-object v1, p0, Lgsx;->a:[Lgsw;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lgsx;->a:[Lgsw;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    new-instance v4, Lgsw;

    iget-object v5, v0, Lobf;->a:Lnxa;

    invoke-interface {v5, v2}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lobe;

    iget-boolean v6, p1, Locj;->g:Z

    invoke-direct {v4, v5, v6}, Lgsw;-><init>(Lobe;Z)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget v0, p1, Locj;->a:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    iget-object v0, p1, Locj;->l:Lobl;

    if-nez v0, :cond_6

    sget-object v0, Lobl;->b:Lobl;

    :cond_6
    iget-object v0, v0, Lobl;->a:Lnxa;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Locj;->l:Lobl;

    if-nez v0, :cond_7

    sget-object v0, Lobl;->b:Lobl;

    :cond_7
    iget-object v0, v0, Lobl;->a:Lnxa;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobk;

    iget v0, v0, Lobk;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    iget-object p1, p1, Locj;->l:Lobl;

    if-nez p1, :cond_8

    sget-object p1, Lobl;->b:Lobl;

    :cond_8
    iget-object p1, p1, Lobl;->a:Lnxa;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lobk;

    iget-object v0, p1, Lobk;->b:Lobj;

    if-nez v0, :cond_9

    sget-object v0, Lobj;->e:Lobj;

    :cond_9
    iget-object v2, v0, Lobj;->b:Lnwx;

    invoke-interface {v2}, Lnwx;->size()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, v0, Lobj;->d:Lnwx;

    invoke-interface {v2}, Lnwx;->size()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, v0, Lobj;->a:Lnwx;

    invoke-interface {v2}, Lnwx;->size()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, v0, Lobj;->c:Lnwx;

    invoke-interface {v2}, Lnwx;->size()I

    move-result v2

    if-gtz v2, :cond_a

    goto :goto_4

    :cond_a
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v0, Lobj;->c:Lnwx;

    invoke-interface {v3, v1}, Lnwx;->d(I)F

    move-result v3

    const/high16 v4, 0x44870000    # 1080.0f

    sub-float v3, v4, v3

    invoke-static {v3, v4}, Lece;->b(FF)F

    move-result v3

    iget-object v5, v0, Lobj;->b:Lnwx;

    invoke-interface {v5, v1}, Lnwx;->d(I)F

    move-result v5

    const/high16 v6, 0x44b40000    # 1440.0f

    invoke-static {v5, v6}, Lece;->b(FF)F

    move-result v5

    iget-object v7, v0, Lobj;->a:Lnwx;

    invoke-interface {v7, v1}, Lnwx;->d(I)F

    move-result v7

    sub-float v7, v4, v7

    invoke-static {v7, v4}, Lece;->b(FF)F

    move-result v4

    iget-object v0, v0, Lobj;->d:Lnwx;

    invoke-interface {v0, v1}, Lnwx;->d(I)F

    move-result v0

    invoke-static {v0, v6}, Lece;->b(FF)F

    move-result v0

    invoke-direct {v2, v3, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_5

    :cond_b
    :goto_4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    :goto_5
    iget-object p1, p1, Lobk;->c:Lnxa;

    invoke-interface {p1, v1}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    return-void

    :cond_c
    new-instance p1, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-void
.end method
