.class final Lbse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lbse;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbse;->a:Ljava/util/List;

    return-void
.end method

.method public static b(Lbzq;)Lbsd;
    .locals 2

    new-instance v0, Lbsd;

    sget-object v1, Lcao;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lbsd;-><init>(Lbzq;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Lbse;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final c()Lbse;
    .locals 3

    new-instance v0, Lbse;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lbse;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lbse;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method final d(Lbzq;)Z
    .locals 1

    iget-object v0, p0, Lbse;->a:Ljava/util/List;

    invoke-static {p1}, Lbse;->b(Lbzq;)Lbsd;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final e()Z
    .locals 1

    iget-object v0, p0, Lbse;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lbse;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
