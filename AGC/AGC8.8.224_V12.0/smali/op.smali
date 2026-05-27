.class public Lop;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/support/wearable/complications/ComplicationData;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lop;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public g()Landroid/text/Layout$Alignment;
    .locals 1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public h()Landroid/text/Layout$Alignment;
    .locals 1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public i()Landroid/text/Layout$Alignment;
    .locals 1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public j()Landroid/text/Layout$Alignment;
    .locals 1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final k(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lop;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public l(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public m(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public n(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public o(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public p(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public q(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public r(Landroid/support/wearable/complications/ComplicationData;)V
    .locals 0

    iput-object p1, p0, Lop;->a:Landroid/support/wearable/complications/ComplicationData;

    return-void
.end method

.method public s(I)V
    .locals 1

    iget-object v0, p0, Lop;->b:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public t(I)V
    .locals 1

    iget-object v0, p0, Lop;->b:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public final u(IILandroid/support/wearable/complications/ComplicationData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lop;->t(I)V

    invoke-virtual {p0, p2}, Lop;->s(I)V

    invoke-virtual {p0, p3}, Lop;->r(Landroid/support/wearable/complications/ComplicationData;)V

    return-void
.end method
