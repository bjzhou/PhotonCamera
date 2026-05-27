.class public Ldmt;
.super Landroid/view/View;


# instance fields
.field public final b:Lkbj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lkbj;

    invoke-direct {p1}, Lkbj;-><init>()V

    iput-object p1, p0, Ldmt;->b:Lkbj;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Ldmt;->b:Lkbj;

    invoke-virtual {v0}, Lkbj;->a()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final layout(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Ldmt;->b:Lkbj;

    invoke-virtual {p0}, Ldmt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Loxq;->i(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lkab;->e(I)Lkab;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lkbj;->c(IIIILkab;)V

    return-void
.end method
