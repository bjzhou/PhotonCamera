.class public final Lnzd;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lnxl;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lnxl;


# direct methods
.method public constructor <init>(Lnxl;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lnzd;->a:Lnxl;

    return-void
.end method


# virtual methods
.method public final d()Lnxl;
    .locals 0

    return-object p0
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnzd;->a:Lnxl;

    invoke-interface {v0, p1}, Lnxl;->f(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnzd;->a:Lnxl;

    check-cast v0, Lnxk;

    invoke-virtual {v0, p1}, Lnxk;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnzd;->a:Lnxl;

    invoke-interface {v0}, Lnxl;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lnvt;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lnzc;

    invoke-direct {v0, p0}, Lnzc;-><init>(Lnzd;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lnzb;

    invoke-direct {v0, p0, p1}, Lnzb;-><init>(Lnzd;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lnzd;->a:Lnxl;

    invoke-interface {v0}, Lnxl;->size()I

    move-result v0

    return v0
.end method
