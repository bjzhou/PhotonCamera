.class public final Lgdm;
.super Ljava/lang/Object;

# interfaces
.implements Lgen;


# instance fields
.field public final a:Loiw;

.field public final b:Ljvs;

.field public final c:Ljuh;

.field public d:Lgeu;

.field public final e:Ljuf;

.field private final f:Landroid/util/SparseIntArray;

.field private final g:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Loiw;Ljvs;Ljuh;Ljuf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lgdm;->f:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lgdm;->g:Landroid/util/SparseArray;

    iput-object p1, p0, Lgdm;->a:Loiw;

    iput-object p2, p0, Lgdm;->b:Ljvs;

    iput-object p3, p0, Lgdm;->c:Ljuh;

    iput-object p4, p0, Lgdm;->e:Ljuf;

    return-void
.end method

.method private final j(I)Z
    .locals 1

    iget-object v0, p0, Lgdm;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lgdm;->d:Lgeu;

    invoke-interface {v0}, Lgeu;->c()V

    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lgdm;->d:Lgeu;

    invoke-interface {v0}, Lgeu;->d()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lgdm;->d:Lgeu;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgeu;->setEnabled(Z)V

    iget-object v0, p0, Lgdm;->d:Lgeu;

    invoke-interface {v0}, Lgeu;->a()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lgdm;->d:Lgeu;

    invoke-interface {v0}, Lgeu;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgdm;->d:Lgeu;

    invoke-interface {v0}, Lgeu;->i()V

    invoke-virtual {p0}, Lgdm;->g()V

    iget-object v0, p0, Lgdm;->d:Lgeu;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgeu;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lgdm;->d:Lgeu;

    invoke-interface {v0}, Lgeu;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgdm;->d:Lgeu;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgeu;->h(Z)V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lgdm;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgdm;->g:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lgdm;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz p2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p3}, Lgdm;->j(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object p1, p0, Lgdm;->d:Lgeu;

    invoke-interface {p1}, Lgeu;->n()V

    const/4 p1, 0x4

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lgdm;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lgdm;->d:Lgeu;

    invoke-interface {p1, v0, p2, p3, p4}, Lgeu;->e(IZILjava/lang/String;)V

    iget-object p1, p0, Lgdm;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p3, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "All extended items are occupied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-direct {p0, p3}, Lgdm;->j(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lgdm;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget-object p2, p0, Lgdm;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object p2, p0, Lgdm;->d:Lgeu;

    const/4 p3, 0x0

    invoke-interface {p2, p1, v0, v0, p3}, Lgeu;->e(IZILjava/lang/String;)V

    return-void

    :cond_5
    return-void
.end method

.method public final i(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lgdm;->a:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeh;

    invoke-interface {v2}, Lgeh;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgdm;->d:Lgeu;

    invoke-interface {v2}, Lgeu;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lgdm;->d:Lgeu;

    if-eq v0, p1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_1
    invoke-interface {v3, v1}, Lgeu;->setVisibility(I)V

    iget-object p1, p0, Lgdm;->d:Lgeu;

    invoke-interface {p1, v2}, Lgeu;->setEnabled(Z)V

    return-void
.end method
