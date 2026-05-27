.class public final Lbjv;
.super Lbjq;


# instance fields
.field private final h:Lbgx;


# direct methods
.method public constructor <init>(Lbgj;Lbjt;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lbjq;-><init>(Lbgj;Lbjt;)V

    new-instance v0, Lbjl;

    iget-object p2, p2, Lbjt;->a:Ljava/util/List;

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lbjl;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lbgx;

    invoke-direct {p2, p1, p0, v0}, Lbgx;-><init>(Lbgj;Lbjq;Lbjl;)V

    iput-object p2, p0, Lbjv;->h:Lbgx;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lbgx;->e(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lbjq;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lbjv;->h:Lbgx;

    iget-object v0, p0, Lbjv;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lbgx;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    iget-object v0, p0, Lbjv;->h:Lbgx;

    invoke-virtual {v0, p1, p2, p3}, Lbgx;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final k(Lbik;ILjava/util/List;Lbik;)V
    .locals 1

    iget-object v0, p0, Lbjv;->h:Lbgx;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbgx;->d(Lbik;ILjava/util/List;Lbik;)V

    return-void
.end method
