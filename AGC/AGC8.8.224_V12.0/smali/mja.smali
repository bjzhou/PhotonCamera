.class abstract Lmja;
.super Ljava/lang/Object;


# instance fields
.field final a:Lmim;

.field protected b:Lmiz;


# direct methods
.method public constructor <init>(Lmim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmja;->a:Lmim;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public abstract c(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
.end method

.method public abstract d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
.end method

.method public abstract e(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method final f(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 1

    iget-object v0, p0, Lmja;->a:Lmim;

    invoke-virtual {v0}, Lmim;->a()V

    invoke-virtual {p0, p1, p2, p3}, Lmja;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    return-void
.end method
