.class public final Lhxo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public b:Lhxp;

.field public final c:Landroid/view/View;

.field public final d:Lhxr;

.field public final e:Lhxr;

.field public final f:Lhxr;

.field public final g:Lhxn;

.field public final h:Lhxn;

.field public final i:Lhxn;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lhxo;->a:Landroid/graphics/RectF;

    iput-object p1, p0, Lhxo;->c:Landroid/view/View;

    new-instance p1, Lhxr;

    invoke-direct {p1, p2}, Lhxr;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lhxo;->d:Lhxr;

    new-instance p1, Lhxr;

    invoke-direct {p1, p2}, Lhxr;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lhxo;->e:Lhxr;

    new-instance p1, Lhxn;

    invoke-direct {p1, p2}, Lhxn;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lhxo;->g:Lhxn;

    new-instance p1, Lhxn;

    invoke-direct {p1, p2}, Lhxn;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lhxo;->h:Lhxn;

    new-instance p1, Lhxr;

    invoke-direct {p1, p3}, Lhxr;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lhxo;->f:Lhxr;

    new-instance p1, Lhxn;

    invoke-direct {p1, p3}, Lhxn;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lhxo;->i:Lhxn;

    return-void
.end method


# virtual methods
.method public final a(Lhxp;)V
    .locals 0

    iput-object p1, p0, Lhxo;->b:Lhxp;

    invoke-virtual {p0}, Lhxo;->b()V

    iget-object p1, p0, Lhxo;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lhxo;->d:Lhxr;

    iget-object v1, p0, Lhxo;->b:Lhxp;

    iget-boolean v2, v1, Lhxp;->i:Z

    iput-boolean v2, v0, Lhxr;->b:Z

    iget-object v0, p0, Lhxo;->e:Lhxr;

    iput-boolean v2, v0, Lhxr;->b:Z

    iget-object v0, p0, Lhxo;->g:Lhxn;

    iput-boolean v2, v0, Lhxn;->b:Z

    iget-object v0, p0, Lhxo;->h:Lhxn;

    iput-boolean v2, v0, Lhxn;->b:Z

    iget-object v0, p0, Lhxo;->f:Lhxr;

    iput-boolean v2, v0, Lhxr;->b:Z

    iget-object v3, p0, Lhxo;->i:Lhxn;

    iput-boolean v2, v3, Lhxn;->b:Z

    iget-boolean v1, v1, Lhxp;->h:Z

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-eq v4, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Lhxn;->a(I)V

    iget-object v0, p0, Lhxo;->i:Lhxn;

    iget-object v1, p0, Lhxo;->b:Lhxp;

    iget-boolean v1, v1, Lhxp;->h:Z

    if-eq v4, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0xff

    :goto_1
    invoke-virtual {v0, v2}, Lhxn;->a(I)V

    iget-object v0, p0, Lhxo;->b:Lhxp;

    iget-object v1, p0, Lhxo;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lhxp;->a(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lhxo;->d:Lhxr;

    iget-object v1, p0, Lhxo;->b:Lhxp;

    iget v2, v1, Lhxp;->a:I

    iput v2, v0, Lhxr;->a:I

    iget-object v0, p0, Lhxo;->e:Lhxr;

    iget v2, v1, Lhxp;->b:I

    iput v2, v0, Lhxr;->a:I

    iget-object v0, p0, Lhxo;->g:Lhxn;

    iget v2, v1, Lhxp;->c:I

    iput v2, v0, Lhxn;->a:I

    iget-object v0, p0, Lhxo;->h:Lhxn;

    iget v2, v1, Lhxp;->d:I

    iput v2, v0, Lhxn;->a:I

    iget-object v0, p0, Lhxo;->f:Lhxr;

    iget v2, v1, Lhxp;->e:I

    iput v2, v0, Lhxr;->a:I

    iget-object v0, p0, Lhxo;->i:Lhxn;

    iget v1, v1, Lhxp;->f:I

    iput v1, v0, Lhxn;->a:I

    iget-object v0, p0, Lhxo;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
