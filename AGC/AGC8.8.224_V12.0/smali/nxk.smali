.class public final Lnxk;
.super Lnvh;

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lnxl;


# static fields
.field private static final b:Lnxk;


# instance fields
.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnxk;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lnxk;-><init>(I)V

    sput-object v0, Lnxk;->b:Lnxk;

    invoke-virtual {v0}, Lnvh;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lnxk;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lnxk;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lnvh;-><init>()V

    iput-object p1, p0, Lnxk;->c:Ljava/util/List;

    return-void
.end method

.method private static j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lnvt;

    if-eqz v0, :cond_1

    check-cast p0, Lnvt;

    invoke-virtual {p0}, Lnvt;->y()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lnxb;->d([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lnvh;->cI()V

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Lnxk;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnxk;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lnvh;->cI()V

    instance-of v0, p2, Lnxl;

    if-eqz v0, :cond_0

    check-cast p2, Lnxl;

    invoke-interface {p2}, Lnxl;->h()Ljava/util/List;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Lnxk;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lnxk;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lnxk;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lnvh;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lnvh;->cI()V

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lnxk;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnxk;->modCount:I

    return-void
.end method

.method public final d()Lnxl;
    .locals 1

    iget-boolean v0, p0, Lnvh;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnzd;

    invoke-direct {v0, p0}, Lnzd;-><init>(Lnxl;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final bridge synthetic e(I)Lnxa;
    .locals 1

    invoke-virtual {p0}, Lnxk;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lnxk;->c:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lnxk;

    invoke-direct {p1, v0}, Lnxk;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Lnvt;

    if-eqz v1, :cond_2

    check-cast v0, Lnvt;

    invoke-virtual {v0}, Lnvt;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnvt;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, [B

    invoke-static {v0}, Lnxb;->d([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnzk;->a:Lkwp;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lkwp;->C([BII)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnxk;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lnvt;)V
    .locals 1

    invoke-virtual {p0}, Lnvh;->cI()V

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lnxk;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnxk;->modCount:I

    return-void
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnvh;->cI()V

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lnxk;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnxk;->modCount:I

    invoke-static {p1}, Lnxk;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lnvh;->cI()V

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnxk;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lnxk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
