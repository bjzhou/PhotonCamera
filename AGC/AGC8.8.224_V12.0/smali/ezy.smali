.class public final Lezy;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfat;
.implements Lfav;
.implements Lfax;
.implements Lfay;


# instance fields
.field final a:Ljava/util/List;

.field final b:Ljava/util/List;

.field public c:I

.field public d:Lfaj;

.field private e:I

.field private f:Lfaj;

.field private g:Lfaj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lezy;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lezy;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lezy;->e:I

    iput v0, p0, Lezy;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lfaj;)V
    .locals 1

    iget-object v0, p0, Lezy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bM()V
    .locals 3

    iget v0, p0, Lezy;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lezy;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iget v0, p0, Lezy;->c:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lezy;->g:Lfaj;

    invoke-virtual {p0, v0}, Lezy;->a(Lfaj;)V

    iget-object v0, p0, Lezy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfaz;

    instance-of v2, v1, Lfaa;

    if-eqz v2, :cond_1

    check-cast v1, Lfaa;

    invoke-interface {v1}, Lfaa;->b()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final bN()V
    .locals 2

    iget v0, p0, Lezy;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lezy;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iget v0, p0, Lezy;->c:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lezq;->c:Lezq;

    invoke-virtual {p0, v0}, Lezy;->f(Lfaj;)V

    iput-object v0, p0, Lezy;->g:Lfaj;

    :cond_1
    return-void
.end method

.method public final bO()V
    .locals 2

    iget v0, p0, Lezy;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lezy;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iget v0, p0, Lezy;->e:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lezq;->e:Lezq;

    invoke-virtual {p0, v0}, Lezy;->f(Lfaj;)V

    iput-object v0, p0, Lezy;->f:Lfaj;

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    iget v0, p0, Lezy;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lezy;->e:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iget v0, p0, Lezy;->e:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lezy;->f:Lfaj;

    invoke-virtual {p0, v0}, Lezy;->a(Lfaj;)V

    iget-object v0, p0, Lezy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfaz;

    instance-of v2, v1, Lfad;

    if-eqz v2, :cond_1

    check-cast v1, Lfad;

    invoke-interface {v1}, Lfad;->d()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final f(Lfaj;)V
    .locals 3

    iget-object v0, p0, Lezy;->a:Ljava/util/List;

    new-instance v1, Ldcc;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v2}, Ldcc;-><init>(Lfaj;I)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lezy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(Lfaz;)V
    .locals 3

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lezy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lezy;->b:Ljava/util/List;

    new-instance v1, Ldcc;

    const/16 v2, 0x10

    invoke-direct {v1, p1, v2}, Ldcc;-><init>(Lfaz;I)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method
