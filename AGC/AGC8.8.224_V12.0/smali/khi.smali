.class public final Lkhi;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final a:Lnou;

.field private final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lmwn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkhi;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lmwn;->cz()Lnac;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfe;

    iget-object v1, v1, Lkfe;->a:Lnph;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object p1

    sget-object v0, Letf;->e:Letf;

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {p1, v0, v1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    iput-object p1, p0, Lkhi;->a:Lnou;

    return-void
.end method


# virtual methods
.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lkoq;

    iget-object v0, p0, Lkhi;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfe;

    invoke-virtual {v1, p1}, Lkfe;->b(Lkoq;)V

    goto :goto_0

    :cond_0
    return-void
.end method
