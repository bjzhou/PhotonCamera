.class public final Laie;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Laie;->a:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Laie;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Laie;->a:Ljava/lang/Object;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Laie;->b:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Laie;->a:Ljava/lang/Object;

    const/4 p1, 0x3

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Laie;->b:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laie;->a:Ljava/lang/Object;

    new-instance v0, Lbkb;

    invoke-direct {v0, p1}, Lbkb;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Laie;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbkb;Landroid/os/Handler;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laie;->a:Ljava/lang/Object;

    iput-object p2, p0, Laie;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laie;->a:Ljava/lang/Object;

    iput-object p1, p0, Laie;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Laie;->a:Ljava/lang/Object;

    new-array v1, v0, [F

    iput-object v1, p0, Laie;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Laie;->a:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v2, [I

    aput v3, v2, v1

    iget-object v2, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    check-cast v2, [F

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lnu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laie;->b:Ljava/lang/Object;

    new-instance p1, Lixk;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lixk;-><init>([B)V

    iput-object p1, p0, Laie;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lpw;Lqe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laie;->a:Ljava/lang/Object;

    iput-object p2, p0, Laie;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lxf;

    invoke-direct {p1}, Lxf;-><init>()V

    iput-object p1, p0, Laie;->b:Ljava/lang/Object;

    new-instance p1, Lxc;

    invoke-direct {p1}, Lxc;-><init>()V

    iput-object p1, p0, Laie;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Laie;->a:Ljava/lang/Object;

    new-instance v1, Lchx;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lchx;-><init>(Ljava/lang/Runnable;I)V

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final b(Landroid/net/Uri;)Ljava/io/File;
    .locals 4

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laie;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Resolved path jumped beyond configured root"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve canonical path for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find configured root for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lmo;)V
    .locals 2

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnv;

    if-nez v0, :cond_0

    invoke-static {}, Lnv;->a()Lnv;

    move-result-object v0

    iget-object v1, p0, Laie;->b:Ljava/lang/Object;

    check-cast v1, Lxf;

    invoke-virtual {v1, p1, v0}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_0
    iget p1, v0, Lnv;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lnv;->b:I

    return-void
.end method

.method public final d(JLmo;)V
    .locals 1

    iget-object v0, p0, Laie;->a:Ljava/lang/Object;

    check-cast v0, Lxc;

    invoke-virtual {v0, p1, p2, p3}, Lxc;->g(JLjava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0}, Lxf;->clear()V

    iget-object v0, p0, Laie;->a:Ljava/lang/Object;

    check-cast v0, Lxc;

    invoke-virtual {v0}, Lxc;->f()V

    return-void
.end method

.method public final f(Lmo;)V
    .locals 1

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnv;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lnv;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lnv;->b:I

    return-void
.end method

.method public final g(Lmo;)V
    .locals 5

    iget-object v0, p0, Laie;->a:Ljava/lang/Object;

    check-cast v0, Lxc;

    invoke-virtual {v0}, Lxc;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laie;->a:Ljava/lang/Object;

    check-cast v1, Lxc;

    invoke-virtual {v1, v0}, Lxc;->e(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Laie;->a:Ljava/lang/Object;

    check-cast v1, Lxc;

    iget-object v2, v1, Lxc;->c:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Lxd;->a:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    aput-object v4, v2, v0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lxc;->a:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnv;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lnv;->b(Lnv;)V

    :cond_2
    return-void
.end method

.method public final h(Lmo;)Z
    .locals 1

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnv;

    if-eqz p1, :cond_0

    iget p1, p1, Lnv;->b:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final i(Lmo;I)Laev;
    .locals 4

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->c(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Laie;->b:Ljava/lang/Object;

    check-cast v1, Lxf;

    invoke-virtual {v1, p1}, Lxf;->g(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnv;

    if-eqz v1, :cond_4

    iget v2, v1, Lnv;->b:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v2

    iput v0, v1, Lnv;->b:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, v1, Lnv;->c:Laev;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    iget-object p2, v1, Lnv;->d:Laev;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->e(I)Ljava/lang/Object;

    invoke-static {v1}, Lnv;->b(Lnv;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method public final j(Lmo;Laev;)V
    .locals 2

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnv;

    if-nez v0, :cond_0

    invoke-static {}, Lnv;->a()Lnv;

    move-result-object v0

    iget-object v1, p0, Laie;->b:Ljava/lang/Object;

    check-cast v1, Lxf;

    invoke-virtual {v1, p1, v0}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_0
    iput-object p2, v0, Lnv;->d:Laev;

    iget p1, v0, Lnv;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lnv;->b:I

    return-void
.end method

.method public final k(Lmo;Laev;)V
    .locals 2

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Lxf;

    invoke-virtual {v0, p1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnv;

    if-nez v0, :cond_0

    invoke-static {}, Lnv;->a()Lnv;

    move-result-object v0

    iget-object v1, p0, Laie;->b:Ljava/lang/Object;

    check-cast v1, Lxf;

    invoke-virtual {v1, p1, v0}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_0
    iput-object p2, v0, Lnv;->c:Laev;

    iget p1, v0, Lnv;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lnv;->b:I

    return-void
.end method

.method public final l(IIII)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lnu;->d()I

    move-result v0

    iget-object v1, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lnu;->c()I

    move-result v1

    const/4 v2, 0x0

    move v3, p1

    :goto_0
    if-eq v3, p2, :cond_3

    iget-object v4, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {v4, v3}, Lnu;->e(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {v5, v4}, Lnu;->b(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {v6, v4}, Lnu;->a(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Laie;->a:Ljava/lang/Object;

    check-cast v7, Lixk;

    invoke-virtual {v7, v0, v1, v5, v6}, Lixk;->d(IIII)V

    iget-object v5, p0, Laie;->a:Ljava/lang/Object;

    check-cast v5, Lixk;

    invoke-virtual {v5}, Lixk;->c()V

    iget-object v5, p0, Laie;->a:Ljava/lang/Object;

    check-cast v5, Lixk;

    invoke-virtual {v5, p3}, Lixk;->b(I)V

    iget-object v5, p0, Laie;->a:Ljava/lang/Object;

    check-cast v5, Lixk;

    invoke-virtual {v5}, Lixk;->e()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lixk;->c()V

    iget-object v5, p0, Laie;->a:Ljava/lang/Object;

    check-cast v5, Lixk;

    invoke-virtual {v5, p4}, Lixk;->b(I)V

    iget-object v5, p0, Laie;->a:Ljava/lang/Object;

    check-cast v5, Lixk;

    invoke-virtual {v5}, Lixk;->e()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_0

    move-object v2, v4

    :cond_0
    if-le p2, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    add-int/2addr v3, v6

    goto :goto_0

    :cond_2
    return-object v4

    :cond_3
    return-object v2
.end method

.method public final m(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Laie;->a:Ljava/lang/Object;

    iget-object v1, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lnu;->d()I

    move-result v1

    iget-object v2, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {v2}, Lnu;->c()I

    move-result v2

    iget-object v3, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {v3, p1}, Lnu;->b(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Laie;->b:Ljava/lang/Object;

    invoke-interface {v4, p1}, Lnu;->a(Landroid/view/View;)I

    move-result p1

    check-cast v0, Lixk;

    invoke-virtual {v0, v1, v2, v3, p1}, Lixk;->d(IIII)V

    iget-object p1, p0, Laie;->a:Ljava/lang/Object;

    check-cast p1, Lixk;

    invoke-virtual {p1}, Lixk;->c()V

    iget-object p1, p0, Laie;->a:Ljava/lang/Object;

    check-cast p1, Lixk;

    const/16 v0, 0x6003

    invoke-virtual {p1, v0}, Lixk;->b(I)V

    iget-object p1, p0, Laie;->a:Ljava/lang/Object;

    check-cast p1, Lixk;

    invoke-virtual {p1}, Lixk;->e()Z

    move-result p1

    return p1
.end method

.method public final n(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Laie;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lfr;->i:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xe

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Laie;->b:Ljava/lang/Object;

    check-cast p1, Lbkb;

    iget-object p1, p1, Lbkb;->a:Ljava/lang/Object;

    invoke-static {}, Lajf;->d()V

    check-cast p1, Lajf;

    iget-object p1, p1, Lajf;->a:Laje;

    iput-boolean v1, p1, Laje;->a:Z

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final o(Lkxr;)V
    .locals 9

    iget v0, p1, Lkxr;->a:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lkxr;->b:Ljava/lang/Object;

    iget-object v0, p0, Laie;->a:Ljava/lang/Object;

    iget-object v1, p0, Laie;->b:Ljava/lang/Object;

    new-instance v8, Lbd;

    move-object v3, v0

    check-cast v3, Lbkb;

    move-object v4, p1

    check-cast v4, Landroid/graphics/Typeface;

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lbd;-><init>(Lbkb;Landroid/graphics/Typeface;I[B[B)V

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Laie;->a:Ljava/lang/Object;

    iget-object v0, p0, Laie;->b:Ljava/lang/Object;

    new-instance v1, Lnk;

    check-cast p1, Lbkb;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, v3}, Lnk;-><init>(Lbkb;I[B[B)V

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
