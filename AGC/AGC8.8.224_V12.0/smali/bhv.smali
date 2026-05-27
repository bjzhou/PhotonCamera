.class public final Lbhv;
.super Lbhx;


# instance fields
.field private final e:Ldne;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0, p1}, Lbhx;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblt;

    iget-object p1, p1, Lblt;->b:Ljava/lang/Object;

    check-cast p1, Ldne;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ldne;->I()I

    move-result v0

    :goto_0
    new-instance p1, Ldne;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Ldne;-><init>([F[I)V

    iput-object p1, p0, Lbhv;->e:Ldne;

    return-void
.end method


# virtual methods
.method public final bridge synthetic f(Lblt;F)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lbhv;->e:Ldne;

    iget-object v1, p1, Lblt;->b:Ljava/lang/Object;

    check-cast v1, Ldne;

    iget-object p1, p1, Lblt;->c:Ljava/lang/Object;

    check-cast p1, Ldne;

    iget-object v2, v1, Ldne;->b:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    iget-object v3, p1, Ldne;->b:Ljava/lang/Object;

    check-cast v3, [I

    array-length v3, v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v1, Ldne;->b:Ljava/lang/Object;

    check-cast v3, [I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Ldne;->a:Ljava/lang/Object;

    iget-object v4, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v4, [F

    aget v4, v4, v2

    iget-object v5, p1, Ldne;->a:Ljava/lang/Object;

    check-cast v5, [F

    aget v5, v5, v2

    sget-object v6, Lbln;->a:Landroid/graphics/PointF;

    sub-float/2addr v5, v4

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    check-cast v3, [F

    aput v4, v3, v2

    iget-object v3, v0, Ldne;->b:Ljava/lang/Object;

    iget-object v4, v1, Ldne;->b:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v2

    iget-object v5, p1, Ldne;->b:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v2

    invoke-static {p2, v4, v5}, Lbze;->L(FII)I

    move-result v4

    check-cast v3, [I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbhv;->e:Ldne;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
