.class final Lbvb;
.super Ljava/lang/Object;

# interfaces
.implements Lbqo;
.implements Lbqn;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Laed;

.field private c:I

.field private d:Lbos;

.field private e:Lbqn;

.field private f:Ljava/util/List;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Laed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbvb;->b:Laed;

    invoke-static {p1}, Lbze;->t(Ljava/util/Collection;)V

    iput-object p1, p0, Lbvb;->a:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lbvb;->c:I

    return-void
.end method

.method private final h()V
    .locals 4

    iget-boolean v0, p0, Lbvb;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lbvb;->c:I

    iget-object v1, p0, Lbvb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lbvb;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbvb;->c:I

    iget-object v0, p0, Lbvb;->d:Lbos;

    iget-object v1, p0, Lbvb;->e:Lbqn;

    invoke-virtual {p0, v0, v1}, Lbvb;->f(Lbos;Lbqn;)V

    return-void

    :cond_1
    iget-object v0, p0, Lbvb;->f:Ljava/util/List;

    invoke-static {v0}, Lbze;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lbvb;->e:Lbqn;

    new-instance v1, Lbsj;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lbvb;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lbsj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lbqn;->e(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lbvb;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqo;

    invoke-interface {v0}, Lbqo;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbvb;->e:Lbqn;

    invoke-interface {v0, p1}, Lbqn;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lbvb;->h()V

    return-void
.end method

.method public final bg()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbvb;->g:Z

    iget-object v0, p0, Lbvb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbqo;

    invoke-interface {v1}, Lbqo;->bg()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lbvb;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbvb;->b:Laed;

    invoke-interface {v1, v0}, Laed;->b(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbvb;->f:Ljava/util/List;

    iget-object v0, p0, Lbvb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbqo;

    invoke-interface {v1}, Lbqo;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lbvb;->f:Ljava/util/List;

    invoke-static {v0}, Lbze;->v(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lbvb;->h()V

    return-void
.end method

.method public final f(Lbos;Lbqn;)V
    .locals 1

    iput-object p1, p0, Lbvb;->d:Lbos;

    iput-object p2, p0, Lbvb;->e:Lbqn;

    iget-object p2, p0, Lbvb;->b:Laed;

    invoke-interface {p2}, Laed;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lbvb;->f:Ljava/util/List;

    iget-object p2, p0, Lbvb;->a:Ljava/util/List;

    iget v0, p0, Lbvb;->c:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbqo;

    invoke-interface {p2, p1, p0}, Lbqo;->f(Lbos;Lbqn;)V

    iget-boolean p1, p0, Lbvb;->g:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lbvb;->bg()V

    :cond_0
    return-void
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Lbvb;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqo;

    invoke-interface {v0}, Lbqo;->g()I

    move-result v0

    return v0
.end method
