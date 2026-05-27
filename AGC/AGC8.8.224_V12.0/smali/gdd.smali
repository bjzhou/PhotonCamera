.class public final Lgdd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkmf;

.field public final b:Lkaf;

.field public final c:Landroid/graphics/Rect;

.field private final d:Lkmf;


# direct methods
.method public constructor <init>(Lkmf;Lkmf;Lkaf;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdd;->a:Lkmf;

    iput-object p2, p0, Lgdd;->d:Lkmf;

    iput-object p3, p0, Lgdd;->b:Lkaf;

    iput-object p4, p0, Lgdd;->c:Landroid/graphics/Rect;

    return-void
.end method

.method public static a(Lkli;Lkaf;I)Lgdd;
    .locals 9

    invoke-interface {p0, p2}, Lkli;->x(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkaf;

    invoke-virtual {v4}, Lkaf;->b()J

    move-result-wide v5

    iget v7, v4, Lkaf;->a:I

    iget v8, p1, Lkaf;->a:I

    if-lt v7, v8, :cond_0

    iget v7, v4, Lkaf;->b:I

    iget v8, p1, Lkaf;->b:I

    if-lt v7, v8, :cond_0

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    move-object v3, v4

    move-wide v1, v5

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    invoke-static {p0}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object v3

    :cond_2
    invoke-static {p1}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljzr;->e(Lkaf;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0}, Lkba;->f(Ljava/util/List;)Lkaf;

    move-result-object p0

    new-instance v1, Lkmf;

    invoke-direct {v1, p2, v3}, Lkmf;-><init>(ILkaf;)V

    new-instance v2, Lkmf;

    invoke-direct {v2, p2, p0}, Lkmf;-><init>(ILkaf;)V

    new-instance p0, Lgdd;

    invoke-direct {p0, v1, v2, p1, v0}, Lgdd;-><init>(Lkmf;Lkmf;Lkaf;Landroid/graphics/Rect;)V

    return-object p0

    :cond_3
    new-instance p0, Lgdc;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No picture sizes supported for format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lgdc;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final b()Lkaf;
    .locals 1

    iget-object v0, p0, Lgdd;->d:Lkmf;

    iget-object v0, v0, Lkmf;->b:Lkaf;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lgdd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lgdd;

    iget-object v1, p0, Lgdd;->b:Lkaf;

    iget-object v3, p1, Lgdd;->b:Lkaf;

    invoke-virtual {v1, v3}, Lkaf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgdd;->d:Lkmf;

    iget-object v3, p1, Lgdd;->d:Lkmf;

    invoke-virtual {v1, v3}, Lkmf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgdd;->a:Lkmf;

    iget-object v3, p1, Lgdd;->a:Lkmf;

    invoke-virtual {v1, v3}, Lkmf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgdd;->c:Landroid/graphics/Rect;

    iget-object p1, p1, Lgdd;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lgdd;->b:Lkaf;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lgdd;->d:Lkmf;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lgdd;->a:Lkmf;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lgdd;->c:Landroid/graphics/Rect;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PictureSizeCalculator.Configuration"

    invoke-static {v0}, Lmoz;->z(Ljava/lang/String;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Lgdd;->b:Lkaf;

    const-string v2, "desired size"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgdd;->a:Lkmf;

    const-string v2, "large image reader"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgdd;->d:Lkmf;

    const-string v2, "full-size image reader"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgdd;->c:Landroid/graphics/Rect;

    const-string v2, "crop"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
