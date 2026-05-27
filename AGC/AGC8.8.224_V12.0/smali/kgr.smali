.class public final synthetic Lkgr;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Lmwn;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Lkpo;


# direct methods
.method public synthetic constructor <init>(Lkpo;Lmwn;JI[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkgr;->d:Lkpo;

    iput-object p2, p0, Lkgr;->a:Lmwn;

    iput-wide p3, p0, Lkgr;->b:J

    iput p5, p0, Lkgr;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lkgr;->d:Lkpo;

    iget-object v1, p0, Lkgr;->a:Lmwn;

    iget-wide v2, p0, Lkgr;->b:J

    iget v4, p0, Lkgr;->c:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lmwn;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lmwn;->cz()Lnac;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkjt;

    iget-object v6, v6, Lkjt;->e:Lkgd;

    iget-object v6, v6, Lkgd;->a:Ljava/lang/Object;

    check-cast v6, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v6}, Landroidx/wear/ambient/AmbientDelegate;->X()Ljvs;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    const/4 v1, 0x2

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    iget-object v0, v0, Lkpo;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->X()Ljvs;

    move-result-object v0

    new-instance v6, Ljyr;

    invoke-direct {v6, v2, v3, v1}, Ljyr;-><init>(JI)V

    invoke-static {v0, v6}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lez v4, :cond_2

    int-to-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v5}, Ljvw;->f(Ljava/util/Collection;)Ljvs;

    move-result-object v0

    new-instance v2, Libl;

    invoke-direct {v2, v4, v1}, Libl;-><init>(II)V

    invoke-static {v0, v2}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    return-object v0
.end method
