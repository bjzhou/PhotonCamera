.class public final Lbhk;
.super Ljava/lang/Object;

# interfaces
.implements Lbhg;
.implements Lbhn;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Z

.field private final c:Lbgj;

.field private final d:Lbhs;

.field private e:Z

.field private final f:Lbkb;


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Lbjm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbhk;->a:Landroid/graphics/Path;

    new-instance v0, Lbkb;

    invoke-direct {v0}, Lbkb;-><init>()V

    iput-object v0, p0, Lbhk;->f:Lbkb;

    iget-boolean v0, p3, Lbjm;->b:Z

    iput-boolean v0, p0, Lbhk;->b:Z

    iput-object p1, p0, Lbhk;->c:Lbgj;

    iget-object p1, p3, Lbjm;->a:Lbiv;

    invoke-virtual {p1}, Lbiv;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhk;->d:Lbhs;

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhk;->e:Z

    iget-object v0, p0, Lbhk;->c:Lbgj;

    invoke-virtual {v0}, Lbgj;->invalidateSelf()V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgw;

    instance-of v1, v0, Lbhm;

    if-eqz v1, :cond_0

    check-cast v0, Lbhm;

    iget v1, v0, Lbhm;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbhk;->f:Lbkb;

    invoke-virtual {v1, v0}, Lbkb;->d(Lbhm;)V

    invoke-virtual {v0, p0}, Lbhm;->a(Lbhn;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lbhk;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhk;->a:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbhk;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lbhk;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lbhk;->e:Z

    iget-object v0, p0, Lbhk;->a:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v0, p0, Lbhk;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lbhk;->d:Lbhs;

    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lbhk;->a:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lbhk;->f:Lbkb;

    iget-object v2, p0, Lbhk;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lbkb;->e(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lbhk;->e:Z

    iget-object v0, p0, Lbhk;->a:Landroid/graphics/Path;

    return-object v0
.end method
