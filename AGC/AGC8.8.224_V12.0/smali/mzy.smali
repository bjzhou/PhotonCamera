.class final Lmzy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lmzz;

.field b:Lmya;

.field final synthetic c:Lnab;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lnab;I)V
    .locals 4

    iput p2, p0, Lmzy;->d:I

    iput-object p1, p0, Lmzy;->c:Lnab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lnab;->rootReference:Lnaa;

    iget-object p2, p2, Lnaa;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lnab;->range:Lmux;

    iget-boolean v2, v1, Lmux;->d:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lmux;->e:Ljava/lang/Object;

    iget-object v2, p1, Lmta;->comparator:Ljava/util/Comparator;

    check-cast p2, Lmzz;

    invoke-virtual {p2, v2, v1}, Lmzz;->d(Ljava/util/Comparator;Ljava/lang/Object;)Lmzz;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lnab;->range:Lmux;

    iget v2, v2, Lmux;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lmta;->comparator:Ljava/util/Comparator;

    iget-object v3, p2, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lmzz;->e()Lmzz;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lnab;->header:Lmzz;

    invoke-virtual {p2}, Lmzz;->e()Lmzz;

    move-result-object p2

    :cond_3
    :goto_0
    iget-object v1, p1, Lnab;->header:Lmzz;

    if-eq p2, v1, :cond_4

    iget-object p1, p1, Lnab;->range:Lmux;

    iget-object v1, p2, Lmzz;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lmux;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    move-object p2, v0

    :cond_5
    :goto_1
    iput-object p2, p0, Lmzy;->a:Lmzz;

    iput-object v0, p0, Lmzy;->b:Lmya;

    return-void
.end method

.method public constructor <init>(Lnab;I[B)V
    .locals 3

    iput p2, p0, Lmzy;->d:I

    iput-object p1, p0, Lmzy;->c:Lnab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lnab;->rootReference:Lnaa;

    iget-object p2, p2, Lnaa;->a:Ljava/lang/Object;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lnab;->range:Lmux;

    iget-boolean v1, v0, Lmux;->b:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lmux;->c:Ljava/lang/Object;

    iget-object v1, p1, Lmta;->comparator:Ljava/util/Comparator;

    check-cast p2, Lmzz;

    invoke-virtual {p2, v1, v0}, Lmzz;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lmzz;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lnab;->range:Lmux;

    iget v1, v1, Lmux;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lmta;->comparator:Ljava/util/Comparator;

    iget-object v2, p2, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lmzz;->g()Lmzz;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lnab;->header:Lmzz;

    invoke-virtual {p2}, Lmzz;->g()Lmzz;

    move-result-object p2

    :cond_3
    :goto_0
    iget-object v0, p1, Lnab;->header:Lmzz;

    if-eq p2, v0, :cond_5

    iget-object p1, p1, Lnab;->range:Lmux;

    iget-object v0, p2, Lmzz;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lmux;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object p3, p2

    goto :goto_1

    :cond_5
    :goto_1
    iput-object p3, p0, Lmzy;->a:Lmzz;

    return-void
.end method


# virtual methods
.method public final a()Lmya;
    .locals 4

    iget v0, p0, Lmzy;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lmzy;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmzy;->c:Lnab;

    iget-object v2, p0, Lmzy;->a:Lmzz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lnab;->u(Lmzz;)Lmya;

    move-result-object v0

    iput-object v0, p0, Lmzy;->b:Lmya;

    invoke-virtual {v2}, Lmzz;->g()Lmzz;

    move-result-object v2

    iget-object v3, p0, Lmzy;->c:Lnab;

    iget-object v3, v3, Lnab;->header:Lmzz;

    if-ne v2, v3, :cond_2

    iput-object v1, p0, Lmzy;->a:Lmzz;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lmzy;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmzy;->a:Lmzz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lmzy;->c:Lnab;

    invoke-virtual {v2, v0}, Lnab;->u(Lmzz;)Lmya;

    move-result-object v2

    iput-object v2, p0, Lmzy;->b:Lmya;

    invoke-virtual {v0}, Lmzz;->e()Lmzz;

    move-result-object v0

    iget-object v3, p0, Lmzy;->c:Lnab;

    iget-object v3, v3, Lnab;->header:Lmzz;

    if-ne v0, v3, :cond_0

    iput-object v1, p0, Lmzy;->a:Lmzz;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmzy;->a:Lmzz;

    invoke-virtual {v0}, Lmzz;->e()Lmzz;

    move-result-object v0

    iput-object v0, p0, Lmzy;->a:Lmzz;

    :goto_0
    return-object v2

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    iget-object v1, p0, Lmzy;->a:Lmzz;

    invoke-virtual {v1}, Lmzz;->g()Lmzz;

    move-result-object v1

    iput-object v1, p0, Lmzy;->a:Lmzz;

    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 5

    iget v0, p0, Lmzy;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lmzy;->a:Lmzz;

    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lmzy;->a:Lmzz;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lmzy;->c:Lnab;

    iget-object v4, v4, Lnab;->range:Lmux;

    iget-object v0, v0, Lmzz;->a:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lmux;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iput-object v2, p0, Lmzy;->a:Lmzz;

    return v3

    :cond_2
    iget-object v4, p0, Lmzy;->c:Lnab;

    iget-object v4, v4, Lnab;->range:Lmux;

    iget-object v0, v0, Lmzz;->a:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lmux;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return v1

    :cond_3
    iput-object v2, p0, Lmzy;->a:Lmzz;

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmzy;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lmzy;->a()Lmya;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lmzy;->a()Lmya;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 5

    iget v0, p0, Lmzy;->d:I

    const/4 v1, 0x0

    const-string v2, "no calls to next() since the last call to remove()"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lmzy;->b:Lmya;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lmzy;->b:Lmya;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Lmzy;->c:Lnab;

    iget-object v2, p0, Lmzy;->b:Lmya;

    invoke-interface {v2}, Lmya;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnab;->x(Ljava/lang/Object;)V

    iput-object v1, p0, Lmzy;->b:Lmya;

    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Lmzy;->c:Lnab;

    iget-object v2, p0, Lmzy;->b:Lmya;

    invoke-interface {v2}, Lmya;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnab;->x(Ljava/lang/Object;)V

    iput-object v1, p0, Lmzy;->b:Lmya;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
