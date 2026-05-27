.class public final Ljea;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method public constructor <init>(Lbby;Lcv;Lbw;Landroid/os/Bundle;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Ljea;->e:Z

    const/4 p6, -0x1

    iput p6, p0, Ljea;->a:I

    iput-object p1, p0, Ljea;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljea;->d:Ljava/lang/Object;

    iput-object p3, p0, Ljea;->c:Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lbw;

    const/4 p1, 0x0

    iput-object p1, p3, Lbw;->h:Landroid/util/SparseArray;

    iput-object p1, p3, Lbw;->i:Landroid/os/Bundle;

    iput p5, p3, Lbw;->x:I

    iput-boolean p5, p3, Lbw;->u:Z

    iput-boolean p5, p3, Lbw;->q:Z

    iget-object p2, p3, Lbw;->m:Lbw;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lbw;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Lbw;->n:Ljava/lang/String;

    iput-object p1, p3, Lbw;->m:Lbw;

    iput-object p4, p3, Lbw;->g:Landroid/os/Bundle;

    const-string p1, "arguments"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p3, Lbw;->l:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lbby;Lcv;Lbw;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Ljea;->e:Z

    const/4 p4, -0x1

    iput p4, p0, Ljea;->a:I

    iput-object p1, p0, Ljea;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljea;->d:Ljava/lang/Object;

    iput-object p3, p0, Ljea;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbby;Lcv;Ljava/lang/ClassLoader;Lcd;Landroid/os/Bundle;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    iput-boolean p6, p0, Ljea;->e:Z

    const/4 p6, -0x1

    iput p6, p0, Ljea;->a:I

    iput-object p1, p0, Ljea;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljea;->d:Ljava/lang/Object;

    const-string p1, "state"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcu;

    iget-object p2, p1, Lcu;->a:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcd;->b(Ljava/lang/String;)Lbw;

    move-result-object p2

    iget-object p4, p1, Lcu;->b:Ljava/lang/String;

    iput-object p4, p2, Lbw;->k:Ljava/lang/String;

    iget-boolean p4, p1, Lcu;->c:Z

    iput-boolean p4, p2, Lbw;->t:Z

    const/4 p4, 0x1

    iput-boolean p4, p2, Lbw;->v:Z

    iget p4, p1, Lcu;->d:I

    iput p4, p2, Lbw;->C:I

    iget p4, p1, Lcu;->e:I

    iput p4, p2, Lbw;->D:I

    iget-object p4, p1, Lcu;->f:Ljava/lang/String;

    iput-object p4, p2, Lbw;->E:Ljava/lang/String;

    iget-boolean p4, p1, Lcu;->g:Z

    iput-boolean p4, p2, Lbw;->H:Z

    iget-boolean p4, p1, Lcu;->h:Z

    iput-boolean p4, p2, Lbw;->r:Z

    iget-boolean p4, p1, Lcu;->i:Z

    iput-boolean p4, p2, Lbw;->G:Z

    iget-boolean p4, p1, Lcu;->j:Z

    iput-boolean p4, p2, Lbw;->F:Z

    invoke-static {}, Lakr;->values()[Lakr;

    move-result-object p4

    iget p6, p1, Lcu;->k:I

    aget-object p4, p4, p6

    iput-object p4, p2, Lbw;->V:Lakr;

    iget-object p4, p1, Lcu;->l:Ljava/lang/String;

    iput-object p4, p2, Lbw;->n:Ljava/lang/String;

    iget p4, p1, Lcu;->m:I

    iput p4, p2, Lbw;->o:I

    iget-boolean p1, p1, Lcu;->n:Z

    iput-boolean p1, p2, Lbw;->P:Z

    iput-object p2, p0, Ljea;->c:Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Lbw;

    iput-object p5, p2, Lbw;->g:Landroid/os/Bundle;

    const-string p1, "arguments"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    move-object p3, p2

    check-cast p3, Lbw;

    invoke-virtual {p2, p1}, Lbw;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    invoke-static {p1}, Lcq;->S(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    iput-object v0, p0, Ljea;->c:Ljava/lang/Object;

    new-instance v0, Lkgd;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lkgd;-><init>([B[B)V

    iput-object v0, p0, Ljea;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljea;->e:Z

    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    iput-object v0, p0, Ljea;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdi;

    iget-object v2, p0, Ljea;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljdi;->c()Ljdz;

    move-result-object v0

    check-cast v2, Lxf;

    invoke-virtual {v2, v0, v1}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljea;->b:Ljava/lang/Object;

    check-cast p1, Lwy;

    invoke-virtual {p1}, Lwy;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Ljea;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljdz;Ljby;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ljea;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1, p2}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1, p3}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Ljea;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljea;->a:I

    invoke-virtual {p2}, Ljby;->b()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljea;->e:Z

    :cond_0
    iget p1, p0, Ljea;->a:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Ljea;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljdb;

    iget-object p2, p0, Ljea;->b:Ljava/lang/Object;

    check-cast p2, Lwy;

    invoke-direct {p1, p2}, Ljdb;-><init>(Lwy;)V

    iget-object p2, p0, Ljea;->d:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-virtual {p2, p1}, Lkgd;->h(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Ljea;->d:Ljava/lang/Object;

    iget-object p2, p0, Ljea;->c:Ljava/lang/Object;

    check-cast p1, Lkgd;

    invoke-virtual {p1, p2}, Lkgd;->i(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-object v0, v0, Lbw;->M:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcq;->f(Landroid/view/View;)Lbw;

    move-result-object v0

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->B:Lbw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lbw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lbw;

    iget v3, v2, Lbw;->D:I

    sget v4, Lajr;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lakd;

    invoke-direct {v4, v2, v0, v3}, Lakd;-><init>(Lbw;Lbw;I)V

    invoke-static {v4}, Lajr;->d(Lakb;)V

    invoke-static {v2}, Lajr;->b(Lbw;)Lajq;

    move-result-object v0

    iget-object v2, v0, Lajq;->b:Ljava/util/Set;

    sget-object v3, Lajp;->e:Lajp;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lajr;->e(Lajq;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v4}, Lajr;->c(Lajq;Lakb;)V

    :cond_0
    iget-object v0, p0, Ljea;->d:Ljava/lang/Object;

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->M:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    check-cast v0, Lcv;

    iget-object v4, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :goto_0
    if-ltz v4, :cond_3

    iget-object v5, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbw;

    iget-object v6, v5, Lbw;->M:Landroid/view/ViewGroup;

    if-ne v6, v2, :cond_2

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    if-eqz v5, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    :goto_1
    iget-object v4, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v4, v0, Lcv;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbw;

    iget-object v5, v4, Lbw;->M:Landroid/view/ViewGroup;

    if-ne v5, v2, :cond_4

    iget-object v4, v4, Lbw;->N:Landroid/view/View;

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-object v1, v0, Lbw;->M:Landroid/view/ViewGroup;

    iget-object v0, v0, Lbw;->N:Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method final c()V
    .locals 8

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-boolean v0, v0, Lbw;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-object v0, v0, Lbw;->g:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    invoke-virtual {v2, v0}, Lbw;->j(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v3, Lbw;

    iget-object v4, v3, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v1, v4

    goto/16 :goto_2

    :cond_3
    iget v4, v3, Lbw;->D:I

    if-eqz v4, :cond_7

    const/4 v1, -0x1

    if-eq v4, v1, :cond_6

    iget-object v1, v3, Lbw;->y:Lcq;

    iget-object v1, v1, Lcq;->j:Lcb;

    invoke-virtual {v1, v4}, Lcb;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    iget-object v3, p0, Ljea;->c:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lbw;

    iget-boolean v4, v4, Lbw;->v:Z

    if-eqz v4, :cond_4

    goto/16 :goto_2

    :cond_4
    :try_start_0
    check-cast v3, Lbw;

    invoke-virtual {v3}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget v1, v1, Lbw;->D:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "unknown"

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v3, Lbw;

    iget v3, v3, Lbw;->D:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    instance-of v3, v1, Lcc;

    if-nez v3, :cond_7

    iget-object v3, p0, Ljea;->c:Ljava/lang/Object;

    sget v4, Lajr;->a:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lakc;

    move-object v5, v3

    check-cast v5, Lbw;

    invoke-direct {v4, v5, v1}, Lakc;-><init>(Lbw;Landroid/view/ViewGroup;)V

    invoke-static {v4}, Lajr;->d(Lakb;)V

    invoke-static {v5}, Lajr;->b(Lbw;)Lajq;

    move-result-object v5

    iget-object v6, v5, Lajq;->b:Ljava/util/Set;

    sget-object v7, Lajp;->i:Lajp;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lajr;->e(Lajq;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v5, v4}, Lajr;->c(Lajq;Lakb;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    iget-object v3, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v3, Lbw;

    iput-object v1, v3, Lbw;->M:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1, v0}, Lbw;->cr(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v2, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->N:Landroid/view/View;

    const/4 v3, 0x2

    if-eqz v2, :cond_c

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v2, p0, Ljea;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    const v6, 0x7f0b0166

    invoke-virtual {v5, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Ljea;->b()V

    :cond_8
    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-boolean v2, v1, Lbw;->F:Z

    if-eqz v2, :cond_9

    iget-object v1, v1, Lbw;->N:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->N:Landroid/view/View;

    invoke-static {v1}, Lafe;->e(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->N:Landroid/view/View;

    invoke-static {v1}, Laff;->c(Landroid/view/View;)V

    goto :goto_3

    :cond_a
    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->N:Landroid/view/View;

    new-instance v2, Lgo;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v5}, Lgo;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_3
    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    invoke-virtual {v1}, Lbw;->o()V

    iget-object v1, p0, Ljea;->b:Ljava/lang/Object;

    iget-object v2, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-object v5, v2, Lbw;->N:Landroid/view/View;

    check-cast v1, Lbby;

    invoke-virtual {v1, v2, v5, v0, v4}, Lbby;->C(Lbw;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-object v0, v0, Lbw;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->N:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget-object v2, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->i()Lbs;

    move-result-object v2

    iput v1, v2, Lbs;->q:F

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v2, v1, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    if-nez v0, :cond_c

    iget-object v0, v1, Lbw;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    invoke-virtual {v1, v0}, Lbw;->r(Landroid/view/View;)V

    invoke-static {v3}, Lcq;->S(I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFocus: Saved focused view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-object v0, v0, Lbw;->N:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iput v3, v0, Lbw;->f:I

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-boolean v1, v0, Lbw;->t:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lbw;->u:Z

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lbw;->w:Z

    if-nez v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-object v0, v0, Lbw;->g:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    invoke-virtual {v2, v0}, Lbw;->j(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lbw;->cr(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->N:Landroid/view/View;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lbw;

    iget-object v3, v3, Lbw;->N:Landroid/view/View;

    const v4, 0x7f0b0166

    invoke-virtual {v3, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-boolean v3, v1, Lbw;->F:Z

    if-eqz v3, :cond_2

    iget-object v1, v1, Lbw;->N:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    invoke-virtual {v1}, Lbw;->o()V

    iget-object v1, p0, Ljea;->b:Ljava/lang/Object;

    iget-object v3, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v3, Lbw;

    iget-object v4, v3, Lbw;->N:Landroid/view/View;

    check-cast v1, Lbby;

    invoke-virtual {v1, v3, v4, v0, v2}, Lbby;->C(Lbw;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    const/4 v1, 0x2

    iput v1, v0, Lbw;->f:I

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 17

    move-object/from16 v1, p0

    iget-boolean v2, v1, Ljea;->e:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v1, Ljea;->e:Z

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lbw;

    iget-object v7, v7, Lbw;->y:Lcq;

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, -0x1

    const/4 v12, 0x3

    if-nez v7, :cond_2

    check-cast v6, Lbw;

    iget v6, v6, Lbw;->f:I

    goto/16 :goto_8

    :cond_2
    iget v6, v1, Ljea;->a:I

    sget-object v7, Lakr;->a:Lakr;

    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v7, Lbw;

    iget-object v7, v7, Lbw;->V:Lakr;

    invoke-virtual {v7}, Lakr;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :pswitch_0
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :pswitch_1
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :pswitch_2
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_1
    :pswitch_3
    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    move-object v14, v7

    check-cast v14, Lbw;

    iget-boolean v14, v14, Lbw;->t:Z

    if-eqz v14, :cond_5

    move-object v14, v7

    check-cast v14, Lbw;

    iget-boolean v14, v14, Lbw;->u:Z

    if-eqz v14, :cond_3

    iget v6, v1, Ljea;->a:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v7, Lbw;

    iget-object v7, v7, Lbw;->N:Landroid/view/View;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_2

    :cond_3
    iget v14, v1, Ljea;->a:I

    if-ge v14, v9, :cond_4

    check-cast v7, Lbw;

    iget v7, v7, Lbw;->f:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_2

    :cond_4
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_5
    :goto_2
    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v7, Lbw;

    iget-boolean v7, v7, Lbw;->q:Z

    if-nez v7, :cond_6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_6
    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    move-object v14, v7

    check-cast v14, Lbw;

    iget-object v14, v14, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v14, :cond_b

    check-cast v7, Lbw;

    invoke-virtual {v7}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v7

    invoke-static {v14, v7}, Ldm;->b(Landroid/view/ViewGroup;Lcq;)Ldm;

    move-result-object v7

    iget-object v14, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v14, Lbw;

    invoke-virtual {v7, v14}, Ldm;->a(Lbw;)Ldl;

    move-result-object v14

    if-eqz v14, :cond_7

    iget v14, v14, Ldl;->f:I

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    :goto_3
    iget-object v15, v1, Ljea;->c:Ljava/lang/Object;

    iget-object v7, v7, Ldm;->c:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v2, :cond_9

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ldl;

    iget-object v10, v9, Ldl;->a:Lbw;

    invoke-virtual {v10, v15}, Lbw;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-boolean v10, v9, Ldl;->c:Z

    if-nez v10, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x5

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_c

    if-eqz v14, :cond_a

    if-ne v14, v4, :cond_c

    :cond_a
    iget v14, v9, Ldl;->f:I

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :cond_c
    :goto_6
    if-ne v14, v3, :cond_d

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_7

    :cond_d
    if-ne v14, v12, :cond_e

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_7

    :cond_e
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lbw;

    iget-boolean v7, v7, Lbw;->r:Z

    if-eqz v7, :cond_10

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->w()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_7

    :cond_f
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_10
    :goto_7
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lbw;

    iget-boolean v7, v7, Lbw;->O:Z

    if-eqz v7, :cond_11

    check-cast v2, Lbw;

    iget v2, v2, Lbw;->f:I

    const/4 v7, 0x5

    if-ge v2, v7, :cond_11

    const/4 v2, 0x4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_11
    invoke-static {v3}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeExpectedState() of "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_8
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lbw;

    iget v7, v7, Lbw;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "initState called for fragment: "

    if-eq v6, v7, :cond_59

    const-string v5, "Fragment "

    if-le v6, v7, :cond_36

    add-int/lit8 v7, v7, 0x1

    const-string v6, "savedInstanceState"

    packed-switch v7, :pswitch_data_1

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_4
    :try_start_1
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto RESUMED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->Q:Lbs;

    if-nez v6, :cond_14

    const/4 v6, 0x0

    goto :goto_9

    :cond_14
    iget-object v6, v6, Lbs;->r:Landroid/view/View;

    :goto_9
    if-nez v6, :cond_15

    goto :goto_c

    :cond_15
    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->N:Landroid/view/View;

    if-ne v6, v2, :cond_16

    goto :goto_b

    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_a
    if-eqz v2, :cond_19

    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v7, Lbw;

    iget-object v7, v7, Lbw;->N:Landroid/view/View;

    if-eq v2, v7, :cond_17

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_a

    :cond_17
    :goto_b
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    move-result v2

    invoke-static {v3}, Lcq;->S(I)Z

    move-result v7

    if-eqz v7, :cond_19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestFocus: Restoring focused view "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "succeeded"

    const-string v8, "failed"

    if-eq v4, v2, :cond_18

    move-object v6, v8

    :cond_18
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on Fragment "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resulting in focused view "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->N:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_c
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lbw;->r(Landroid/view/View;)V

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    invoke-virtual {v6}, Lcq;->H()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    invoke-virtual {v6, v4}, Lcq;->ab(Z)V

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x7

    iput v7, v6, Lbw;->f:I

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lbw;->L:Z

    move-object v6, v2

    check-cast v6, Lbw;

    invoke-virtual {v6}, Lbw;->onResume()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_1b

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->ab:Laks;

    sget-object v6, Lakq;->ON_RESUME:Lakq;

    invoke-virtual {v5, v6}, Laks;->b(Lakq;)V

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    if-eqz v5, :cond_1a

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->W:Ldg;

    sget-object v6, Lakq;->ON_RESUME:Lakq;

    invoke-virtual {v5, v6}, Ldg;->a(Lakq;)V

    :cond_1a
    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->A:Lcq;

    invoke-virtual {v2}, Lcq;->y()V

    iget-object v2, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    check-cast v2, Lbby;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbby;->y(Lbw;Z)V

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lbw;

    const/4 v6, 0x0

    iput-object v6, v5, Lbw;->g:Landroid/os/Bundle;

    move-object v5, v2

    check-cast v5, Lbw;

    iput-object v6, v5, Lbw;->h:Landroid/util/SparseArray;

    check-cast v2, Lbw;

    iput-object v6, v2, Lbw;->i:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1b
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_5
    check-cast v2, Lbw;

    iput v8, v2, Lbw;->f:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto STARTED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    invoke-virtual {v6}, Lcq;->H()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    invoke-virtual {v6, v4}, Lcq;->ab(Z)V

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x5

    iput v7, v6, Lbw;->f:I

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lbw;->L:Z

    move-object v6, v2

    check-cast v6, Lbw;

    invoke-virtual {v6}, Lbw;->onStart()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_1e

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->ab:Laks;

    sget-object v6, Lakq;->ON_START:Lakq;

    invoke-virtual {v5, v6}, Laks;->b(Lakq;)V

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    if-eqz v5, :cond_1d

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->W:Ldg;

    sget-object v6, Lakq;->ON_START:Lakq;

    invoke-virtual {v5, v6}, Ldg;->a(Lakq;)V

    :cond_1d
    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->A:Lcq;

    invoke-virtual {v2}, Lcq;->z()V

    iget-object v2, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    check-cast v2, Lbby;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbby;->A(Lbw;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1e
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_7
    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    if-eqz v5, :cond_20

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v5, :cond_20

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v2

    invoke-static {v5, v2}, Ldm;->b(Landroid/view/ViewGroup;Lcq;)Ldm;

    move-result-object v2

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Ldp;->s(I)I

    move-result v5

    invoke-static {v3}, Lcq;->S(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v2, v5, v3, v1}, Ldm;->k(IILjea;)V

    :cond_20
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    const/4 v5, 0x4

    iput v5, v2, Lbw;->f:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_8
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_21
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_22

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_d

    :cond_22
    const/4 v2, 0x0

    :goto_d
    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Lbw;

    iget-object v8, v8, Lbw;->A:Lcq;

    invoke-virtual {v8}, Lcq;->H()V

    move-object v8, v7

    check-cast v8, Lbw;

    iput v12, v8, Lbw;->f:I

    move-object v8, v7

    check-cast v8, Lbw;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lbw;->L:Z

    move-object v8, v7

    check-cast v8, Lbw;

    invoke-virtual {v8, v2}, Lbw;->onActivityCreated(Landroid/os/Bundle;)V

    move-object v8, v7

    check-cast v8, Lbw;

    iget-boolean v8, v8, Lbw;->L:Z

    if-eqz v8, :cond_28

    invoke-static {v12}, Lcq;->S(I)Z

    move-result v8

    if-eqz v8, :cond_23

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    move-object v8, v7

    check-cast v8, Lbw;

    iget-object v8, v8, Lbw;->N:Landroid/view/View;

    if-eqz v8, :cond_27

    move-object v8, v7

    check-cast v8, Lbw;

    iget-object v8, v8, Lbw;->g:Landroid/os/Bundle;

    if-eqz v8, :cond_24

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_e

    :cond_24
    const/4 v6, 0x0

    :goto_e
    move-object v8, v7

    check-cast v8, Lbw;

    iget-object v8, v8, Lbw;->h:Landroid/util/SparseArray;

    if-eqz v8, :cond_25

    move-object v9, v7

    check-cast v9, Lbw;

    iget-object v9, v9, Lbw;->N:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    move-object v8, v7

    check-cast v8, Lbw;

    const/4 v9, 0x0

    iput-object v9, v8, Lbw;->h:Landroid/util/SparseArray;

    :cond_25
    move-object v8, v7

    check-cast v8, Lbw;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lbw;->L:Z

    move-object v8, v7

    check-cast v8, Lbw;

    invoke-virtual {v8, v6}, Lbw;->onViewStateRestored(Landroid/os/Bundle;)V

    move-object v6, v7

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_26

    move-object v5, v7

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    if-eqz v5, :cond_27

    move-object v5, v7

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->W:Ldg;

    sget-object v6, Lakq;->ON_CREATE:Lakq;

    invoke-virtual {v5, v6}, Ldg;->a(Lakq;)V

    goto :goto_f

    :cond_26
    new-instance v2, Ldn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ldn;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    :goto_f
    move-object v5, v7

    check-cast v5, Lbw;

    const/4 v6, 0x0

    iput-object v6, v5, Lbw;->g:Landroid/os/Bundle;

    check-cast v7, Lbw;

    iget-object v5, v7, Lbw;->A:Lcq;

    invoke-virtual {v5}, Lcq;->n()V

    iget-object v5, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v6, Lbw;

    check-cast v5, Lbby;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Lbby;->q(Lbw;Landroid/os/Bundle;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_28
    new-instance v2, Ldn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " did not call through to super.onActivityCreated()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ldn;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Ljea;->d()V

    invoke-virtual/range {p0 .. p0}, Ljea;->c()V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_a
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveto CREATED: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_29
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_2a

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    goto :goto_10

    :cond_2a
    const/4 v13, 0x0

    :goto_10
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->U:Z

    if-nez v6, :cond_2c

    iget-object v6, v1, Ljea;->b:Ljava/lang/Object;

    check-cast v6, Lbby;

    check-cast v2, Lbw;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v13, v7}, Lbby;->x(Lbw;Landroid/os/Bundle;Z)V

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    invoke-virtual {v6}, Lcq;->H()V

    move-object v6, v2

    check-cast v6, Lbw;

    iput v4, v6, Lbw;->f:I

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lbw;->L:Z

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->ab:Laks;

    new-instance v7, Landroid/support/v4/app/Fragment$6;

    move-object v8, v2

    check-cast v8, Lbw;

    invoke-direct {v7, v8}, Landroid/support/v4/app/Fragment$6;-><init>(Lbw;)V

    invoke-virtual {v6, v7}, Laks;->a(Laku;)V

    move-object v6, v2

    check-cast v6, Lbw;

    invoke-virtual {v6, v13}, Lbw;->onCreate(Landroid/os/Bundle;)V

    move-object v6, v2

    check-cast v6, Lbw;

    iput-boolean v4, v6, Lbw;->U:Z

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_2b

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->ab:Laks;

    sget-object v5, Lakq;->ON_CREATE:Lakq;

    invoke-virtual {v2, v5}, Laks;->b(Lakq;)V

    iget-object v2, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    check-cast v2, Lbby;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v13, v6}, Lbby;->s(Lbw;Landroid/os/Bundle;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2b
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2c
    move-object v5, v2

    check-cast v5, Lbw;

    iput v4, v5, Lbw;->f:I

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->p()V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_b
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto ATTACHED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2d
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->m:Lbw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, " that does not belong to this FragmentManager!"

    const-string v8, " declared target fragment "

    if-eqz v6, :cond_2f

    :try_start_2
    iget-object v2, v1, Ljea;->d:Ljava/lang/Object;

    iget-object v6, v6, Lbw;->k:Ljava/lang/String;

    check-cast v2, Lcv;

    invoke-virtual {v2, v6}, Lcv;->k(Ljava/lang/String;)Ljea;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lbw;

    iget-object v7, v7, Lbw;->m:Lbw;

    iget-object v7, v7, Lbw;->k:Ljava/lang/String;

    move-object v8, v6

    check-cast v8, Lbw;

    iput-object v7, v8, Lbw;->n:Ljava/lang/String;

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput-object v7, v6, Lbw;->m:Lbw;

    move-object v13, v2

    goto :goto_11

    :cond_2e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v4, Lbw;

    iget-object v4, v4, Lbw;->m:Lbw;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->n:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v6, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v6, Lcv;

    invoke-virtual {v6, v2}, Lcv;->k(Ljava/lang/String;)Ljea;

    move-result-object v13

    if-eqz v13, :cond_30

    goto :goto_11

    :cond_30
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v4, Lbw;

    iget-object v4, v4, Lbw;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    const/4 v13, 0x0

    :goto_11
    if-eqz v13, :cond_32

    invoke-virtual {v13}, Ljea;->e()V

    :cond_32
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->y:Lcq;

    iget-object v7, v6, Lcq;->i:Lce;

    move-object v8, v2

    check-cast v8, Lbw;

    iput-object v7, v8, Lbw;->z:Lce;

    iget-object v6, v6, Lcq;->k:Lbw;

    move-object v7, v2

    check-cast v7, Lbw;

    iput-object v6, v7, Lbw;->B:Lbw;

    iget-object v6, v1, Ljea;->b:Ljava/lang/Object;

    check-cast v6, Lbby;

    check-cast v2, Lbw;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lbby;->w(Lbw;Z)V

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->aa:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v7, :cond_33

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbu;

    invoke-virtual {v9}, Lbu;->a()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_33
    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->aa:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    move-object v7, v2

    check-cast v7, Lbw;

    iget-object v7, v7, Lbw;->z:Lce;

    move-object v8, v2

    check-cast v8, Lbw;

    invoke-virtual {v8}, Lbw;->bb()Lcb;

    move-result-object v8

    move-object v9, v2

    check-cast v9, Lbw;

    invoke-virtual {v6, v7, v8, v9}, Lcq;->k(Lce;Lcb;Lbw;)V

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput v7, v6, Lbw;->f:I

    move-object v6, v2

    check-cast v6, Lbw;

    iput-boolean v7, v6, Lbw;->L:Z

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->z:Lce;

    iget-object v6, v6, Lce;->c:Landroid/content/Context;

    move-object v7, v2

    check-cast v7, Lbw;

    invoke-virtual {v7, v6}, Lbw;->onAttach(Landroid/content/Context;)V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_35

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->y:Lcq;

    iget-object v5, v5, Lcq;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lct;

    invoke-interface {v6}, Lct;->g()V

    goto :goto_13

    :cond_34
    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->A:Lcq;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcq;->r:Z

    iput-boolean v5, v2, Lcq;->s:Z

    iget-object v6, v2, Lcq;->u:Lcs;

    iput-boolean v5, v6, Lcs;->g:Z

    invoke-virtual {v2, v5}, Lcq;->A(I)V

    iget-object v2, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    check-cast v2, Lbby;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbby;->r(Lbw;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_35
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_36
    add-int/lit8 v7, v7, -0x1

    packed-switch v7, :pswitch_data_2

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_c
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom RESUMED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_37
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    invoke-virtual {v6}, Lcq;->w()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->N:Landroid/view/View;

    if-eqz v6, :cond_38

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->W:Ldg;

    sget-object v7, Lakq;->ON_PAUSE:Lakq;

    invoke-virtual {v6, v7}, Ldg;->a(Lakq;)V

    :cond_38
    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->ab:Laks;

    sget-object v7, Lakq;->ON_PAUSE:Lakq;

    invoke-virtual {v6, v7}, Laks;->b(Lakq;)V

    move-object v6, v2

    check-cast v6, Lbw;

    iput v8, v6, Lbw;->f:I

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lbw;->L:Z

    move-object v6, v2

    check-cast v6, Lbw;

    invoke-virtual {v6}, Lbw;->onPause()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_39

    iget-object v2, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    check-cast v2, Lbby;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbby;->v(Lbw;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_39
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_d
    check-cast v2, Lbw;

    const/4 v5, 0x5

    iput v5, v2, Lbw;->f:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_e
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom STARTED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3a
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    invoke-virtual {v6}, Lcq;->B()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->N:Landroid/view/View;

    if-eqz v6, :cond_3b

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->W:Ldg;

    sget-object v7, Lakq;->ON_STOP:Lakq;

    invoke-virtual {v6, v7}, Ldg;->a(Lakq;)V

    :cond_3b
    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->ab:Laks;

    sget-object v7, Lakq;->ON_STOP:Lakq;

    invoke-virtual {v6, v7}, Laks;->b(Lakq;)V

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x4

    iput v7, v6, Lbw;->f:I

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lbw;->L:Z

    move-object v6, v2

    check-cast v6, Lbw;

    invoke-virtual {v6}, Lbw;->onStop()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_3c

    iget-object v2, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    check-cast v2, Lbby;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbby;->B(Lbw;Z)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3c
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_f
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3d
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lbw;

    iget-boolean v5, v5, Lbw;->s:Z

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    if-eqz v5, :cond_3e

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->h:Landroid/util/SparseArray;

    if-nez v2, :cond_3e

    invoke-virtual/range {p0 .. p0}, Ljea;->g()V

    :cond_3e
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    if-eqz v5, :cond_40

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v5, :cond_40

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v2

    invoke-static {v5, v2}, Ldm;->b(Landroid/view/ViewGroup;Lcq;)Ldm;

    move-result-object v2

    invoke-static {v3}, Lcq;->S(I)Z

    move-result v5

    if-eqz v5, :cond_3f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {v2, v4, v12, v1}, Ldm;->k(IILjea;)V

    :cond_40
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iput v12, v2, Lbw;->f:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_10
    move-object v5, v2

    check-cast v5, Lbw;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lbw;->u:Z

    check-cast v2, Lbw;

    iput v3, v2, Lbw;->f:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_11
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_41

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom CREATE_VIEW: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v6, :cond_42

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->N:Landroid/view/View;

    if-eqz v2, :cond_42

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_42
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    invoke-virtual {v6, v4}, Lcq;->A(I)V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->N:Landroid/view/View;

    if-eqz v6, :cond_43

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->W:Ldg;

    invoke-virtual {v6}, Ldg;->getLifecycle()Laks;

    move-result-object v6

    iget-object v6, v6, Laks;->a:Lakr;

    sget-object v7, Lakr;->c:Lakr;

    invoke-virtual {v6, v7}, Lakr;->a(Lakr;)Z

    move-result v6

    if-eqz v6, :cond_43

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->W:Ldg;

    sget-object v7, Lakq;->ON_DESTROY:Lakq;

    invoke-virtual {v6, v7}, Ldg;->a(Lakq;)V

    :cond_43
    move-object v6, v2

    check-cast v6, Lbw;

    iput v4, v6, Lbw;->f:I

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lbw;->L:Z

    move-object v6, v2

    check-cast v6, Lbw;

    invoke-virtual {v6}, Lbw;->onDestroyView()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_45

    invoke-static {v2}, Lamd;->a(Lakv;)Lamd;

    move-result-object v5

    iget-object v5, v5, Lamd;->a:Lamh;

    iget-object v6, v5, Lamh;->b:Lxg;

    invoke-virtual {v6}, Lxg;->b()I

    move-result v6

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v6, :cond_44

    iget-object v8, v5, Lamh;->b:Lxg;

    invoke-virtual {v8, v7}, Lxg;->c(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lame;

    invoke-virtual {v8}, Lame;->i()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_44
    check-cast v2, Lbw;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lbw;->w:Z

    iget-object v2, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    check-cast v2, Lbby;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbby;->D(Lbw;Z)V

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lbw;

    const/4 v6, 0x0

    iput-object v6, v5, Lbw;->M:Landroid/view/ViewGroup;

    move-object v5, v2

    check-cast v5, Lbw;

    iput-object v6, v5, Lbw;->N:Landroid/view/View;

    move-object v5, v2

    check-cast v5, Lbw;

    iput-object v6, v5, Lbw;->W:Ldg;

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->X:Lald;

    invoke-virtual {v2, v6}, Lald;->g(Ljava/lang/Object;)V

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lbw;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lbw;->u:Z

    check-cast v2, Lbw;

    iput v4, v2, Lbw;->f:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_45
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_12
    check-cast v2, Lbw;

    iget-boolean v2, v2, Lbw;->s:Z

    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom CREATED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_46
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->r:Z

    if-eqz v6, :cond_47

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->w()Z

    move-result v2

    if-nez v2, :cond_47

    const/4 v2, 0x1

    goto :goto_15

    :cond_47
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_48

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lbw;

    iget-boolean v7, v7, Lbw;->s:Z

    iget-object v7, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->k:Ljava/lang/String;

    check-cast v7, Lcv;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lcv;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_48
    if-nez v2, :cond_4b

    iget-object v6, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v6, Lcv;

    iget-object v6, v6, Lcv;->d:Lcs;

    iget-object v7, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v7, Lbw;

    invoke-virtual {v6, v7}, Lcs;->f(Lbw;)Z

    move-result v6

    if-eqz v6, :cond_49

    goto :goto_16

    :cond_49
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->n:Ljava/lang/String;

    if-eqz v2, :cond_4a

    iget-object v5, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v5, Lcv;

    invoke-virtual {v5, v2}, Lcv;->b(Ljava/lang/String;)Lbw;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget-boolean v5, v2, Lbw;->H:Z

    if-eqz v5, :cond_4a

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    iput-object v2, v5, Lbw;->m:Lbw;

    :cond_4a
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    const/4 v5, 0x0

    iput v5, v2, Lbw;->f:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_4b
    :goto_16
    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->z:Lce;

    instance-of v7, v6, Lalw;

    if-eqz v7, :cond_4c

    iget-object v6, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v6, Lcv;

    iget-object v6, v6, Lcv;->d:Lcs;

    iget-boolean v6, v6, Lcs;->f:Z

    goto :goto_17

    :cond_4c
    iget-object v6, v6, Lce;->c:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v6

    xor-int/2addr v6, v4

    :goto_17
    if-eqz v2, :cond_4d

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-boolean v2, v2, Lbw;->s:Z

    goto :goto_18

    :cond_4d
    if-eqz v6, :cond_4e

    :goto_18
    iget-object v2, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v2, Lcv;

    iget-object v2, v2, Lcv;->d:Lcs;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v6, Lbw;

    invoke-virtual {v2, v6}, Lcs;->b(Lbw;)V

    :cond_4e
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->A:Lcq;

    invoke-virtual {v6}, Lcq;->q()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->ab:Laks;

    sget-object v7, Lakq;->ON_DESTROY:Lakq;

    invoke-virtual {v6, v7}, Laks;->b(Lakq;)V

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput v7, v6, Lbw;->f:I

    move-object v6, v2

    check-cast v6, Lbw;

    iput-boolean v7, v6, Lbw;->L:Z

    move-object v6, v2

    check-cast v6, Lbw;

    iput-boolean v7, v6, Lbw;->U:Z

    move-object v6, v2

    check-cast v6, Lbw;

    invoke-virtual {v6}, Lbw;->onDestroy()V

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_52

    iget-object v2, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    check-cast v2, Lbby;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbby;->t(Lbw;Z)V

    iget-object v2, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v2, Lcv;

    invoke-virtual {v2}, Lcv;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4f
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljea;

    if-eqz v5, :cond_4f

    iget-object v5, v5, Ljea;->c:Ljava/lang/Object;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v6, Lbw;

    iget-object v6, v6, Lbw;->k:Ljava/lang/String;

    move-object v7, v5

    check-cast v7, Lbw;

    iget-object v7, v7, Lbw;->n:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v6, Lbw;

    move-object v7, v5

    check-cast v7, Lbw;

    iput-object v6, v7, Lbw;->m:Lbw;

    check-cast v5, Lbw;

    const/4 v6, 0x0

    iput-object v6, v5, Lbw;->n:Ljava/lang/String;

    goto :goto_19

    :cond_50
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->n:Ljava/lang/String;

    if-eqz v5, :cond_51

    iget-object v6, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v6, Lcv;

    invoke-virtual {v6, v5}, Lcv;->b(Ljava/lang/String;)Lbw;

    move-result-object v5

    check-cast v2, Lbw;

    iput-object v5, v2, Lbw;->m:Lbw;

    :cond_51
    iget-object v2, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v2, Lcv;

    invoke-virtual {v2, v1}, Lcv;->m(Ljea;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_52
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_13
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_53

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom ATTACHED: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_53
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lbw;

    iput v11, v6, Lbw;->f:I

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lbw;->L:Z

    move-object v6, v2

    check-cast v6, Lbw;

    invoke-virtual {v6}, Lbw;->onDetach()V

    move-object v6, v2

    check-cast v6, Lbw;

    const/4 v7, 0x0

    iput-object v7, v6, Lbw;->T:Landroid/view/LayoutInflater;

    move-object v6, v2

    check-cast v6, Lbw;

    iget-boolean v6, v6, Lbw;->L:Z

    if-eqz v6, :cond_58

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->A:Lcq;

    iget-boolean v6, v5, Lcq;->t:Z

    if-nez v6, :cond_54

    invoke-virtual {v5}, Lcq;->q()V

    new-instance v5, Lcq;

    invoke-direct {v5}, Lcq;-><init>()V

    check-cast v2, Lbw;

    iput-object v5, v2, Lbw;->A:Lcq;

    :cond_54
    iget-object v2, v1, Ljea;->b:Ljava/lang/Object;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    check-cast v2, Lbby;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbby;->u(Lbw;Z)V

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lbw;

    iput v11, v5, Lbw;->f:I

    move-object v5, v2

    check-cast v5, Lbw;

    const/4 v6, 0x0

    iput-object v6, v5, Lbw;->z:Lce;

    move-object v5, v2

    check-cast v5, Lbw;

    iput-object v6, v5, Lbw;->B:Lbw;

    move-object v5, v2

    check-cast v5, Lbw;

    iput-object v6, v5, Lbw;->y:Lcq;

    move-object v5, v2

    check-cast v5, Lbw;

    iget-boolean v5, v5, Lbw;->r:Z

    if-eqz v5, :cond_55

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->w()Z

    move-result v2

    if-nez v2, :cond_55

    goto :goto_1a

    :cond_55
    iget-object v2, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v2, Lcv;

    iget-object v2, v2, Lcv;->d:Lcs;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    invoke-virtual {v2, v5}, Lcs;->f(Lbw;)Z

    move-result v2

    if-nez v2, :cond_56

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_56
    :goto_1a
    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_57

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_57
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->n()V

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_58
    new-instance v3, Ldn;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ldn;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_59
    if-nez v5, :cond_5c

    if-ne v7, v11, :cond_5c

    move-object v5, v2

    check-cast v5, Lbw;

    iget-boolean v5, v5, Lbw;->r:Z

    if-eqz v5, :cond_5c

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->w()Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    iget-boolean v2, v2, Lbw;->s:Z

    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up state of never attached fragment: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5a
    iget-object v2, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v2, Lcv;

    iget-object v2, v2, Lcv;->d:Lcs;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    invoke-virtual {v2, v5}, Lcs;->b(Lbw;)V

    iget-object v2, v1, Ljea;->d:Ljava/lang/Object;

    check-cast v2, Lcv;

    invoke-virtual {v2, v1}, Lcv;->m(Ljea;)V

    invoke-static {v12}, Lcq;->S(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5b
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->n()V

    :cond_5c
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lbw;

    iget-boolean v5, v5, Lbw;->S:Z

    if-eqz v5, :cond_63

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->N:Landroid/view/View;

    if-eqz v5, :cond_60

    move-object v5, v2

    check-cast v5, Lbw;

    iget-object v5, v5, Lbw;->M:Landroid/view/ViewGroup;

    if-eqz v5, :cond_60

    check-cast v2, Lbw;

    invoke-virtual {v2}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v2

    invoke-static {v5, v2}, Ldm;->b(Landroid/view/ViewGroup;Lcq;)Ldm;

    move-result-object v2

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    check-cast v5, Lbw;

    iget-boolean v5, v5, Lbw;->F:Z

    if-eqz v5, :cond_5e

    invoke-static {v3}, Lcq;->S(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5d
    invoke-virtual {v2, v12, v4, v1}, Ldm;->k(IILjea;)V

    goto :goto_1b

    :cond_5e
    invoke-static {v3}, Lcq;->S(I)Z

    move-result v5

    if-eqz v5, :cond_5f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5f
    invoke-virtual {v2, v3, v4, v1}, Ldm;->k(IILjea;)V

    :cond_60
    :goto_1b
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lbw;

    iget-object v3, v3, Lbw;->y:Lcq;

    if-nez v3, :cond_61

    goto :goto_1c

    :cond_61
    move-object v5, v2

    check-cast v5, Lbw;

    iget-boolean v5, v5, Lbw;->q:Z

    if-eqz v5, :cond_62

    check-cast v2, Lbw;

    invoke-static {v2}, Lcq;->X(Lbw;)Z

    move-result v2

    if-eqz v2, :cond_62

    iput-boolean v4, v3, Lcq;->q:Z

    :cond_62
    :goto_1c
    iget-object v2, v1, Ljea;->c:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lbw;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lbw;->S:Z

    move-object v3, v2

    check-cast v3, Lbw;

    iget-boolean v3, v3, Lbw;->F:Z

    check-cast v2, Lbw;

    iget-object v2, v2, Lbw;->A:Lcq;

    invoke-virtual {v2}, Lcq;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_63
    const/4 v2, 0x0

    iput-boolean v2, v1, Ljea;->e:Z

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v1, Ljea;->e:Z

    goto :goto_1e

    :goto_1d
    throw v2

    :goto_1e
    goto :goto_1d

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public final f(Ljava/lang/ClassLoader;)V
    .locals 2

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-object v0, v0, Lbw;->g:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast p1, Lbw;

    iget-object p1, p1, Lbw;->g:Landroid/os/Bundle;

    const-string v0, "savedInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast p1, Lbw;

    iget-object p1, p1, Lbw;->g:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object p1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast p1, Lbw;

    iget-object v0, p1, Lbw;->g:Landroid/os/Bundle;

    const-string v1, "viewState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Lbw;->h:Landroid/util/SparseArray;

    iget-object p1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast p1, Lbw;

    iget-object v0, p1, Lbw;->g:Landroid/os/Bundle;

    const-string v1, "viewRegistryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Lbw;->i:Landroid/os/Bundle;

    iget-object p1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast p1, Lbw;

    iget-object p1, p1, Lbw;->g:Landroid/os/Bundle;

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcu;

    if-eqz p1, :cond_3

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    iget-object v1, p1, Lcu;->l:Ljava/lang/String;

    check-cast v0, Lbw;

    iput-object v1, v0, Lbw;->n:Ljava/lang/String;

    iget v1, p1, Lcu;->m:I

    iput v1, v0, Lbw;->o:I

    iget-object v1, v0, Lbw;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lbw;->P:Z

    iget-object p1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast p1, Lbw;

    const/4 v0, 0x0

    iput-object v0, p1, Lbw;->j:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Lcu;->n:Z

    iput-boolean p1, v0, Lbw;->P:Z

    :cond_3
    :goto_0
    iget-object p1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast p1, Lbw;

    iget-boolean v0, p1, Lbw;->P:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p1, Lbw;->O:Z

    :cond_4
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v0, Lbw;

    iget-object v0, v0, Lbw;->N:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving view state for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->N:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->N:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iput-object v0, v1, Lbw;->h:Landroid/util/SparseArray;

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iget-object v1, v1, Lbw;->W:Ldg;

    iget-object v1, v1, Ldg;->b:Lbza;

    invoke-virtual {v1, v0}, Lbza;->i(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ljea;->c:Ljava/lang/Object;

    check-cast v1, Lbw;

    iput-object v0, v1, Lbw;->i:Landroid/os/Bundle;

    :cond_3
    return-void
.end method
