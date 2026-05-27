.class final Latp;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field a:I

.field b:Lato;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Latp;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Latr;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Latp;->d:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lato;

    invoke-direct {v0}, Lato;-><init>()V

    iput-object v0, p0, Latp;->b:Lato;

    return-void
.end method

.method public constructor <init>(Latp;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Latp;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Latr;->a:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Latp;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    iget v0, p1, Latp;->a:I

    iput v0, p0, Latp;->a:I

    new-instance v0, Lato;

    iget-object v1, p1, Latp;->b:Lato;

    invoke-direct {v0, v1}, Lato;-><init>(Lato;)V

    iput-object v0, p0, Latp;->b:Lato;

    iget-object v0, p1, Latp;->b:Lato;

    iget-object v0, v0, Lato;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Latp;->b:Lato;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Lato;->c:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p1, Latp;->b:Lato;

    iget-object v0, v0, Lato;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v1, p0, Latp;->b:Lato;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Lato;->b:Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p1, Latp;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Latp;->c:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Latp;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Latp;->d:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p1, p1, Latp;->e:Z

    iput-boolean p1, p0, Latp;->e:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 8

    iget-object v0, p0, Latp;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v0, p0, Latp;->f:Landroid/graphics/Bitmap;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Latp;->b:Lato;

    iget-object v3, v2, Lato;->d:Latm;

    sget-object v4, Lato;->a:Landroid/graphics/Matrix;

    move v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lato;->a(Latm;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Latp;->b:Lato;

    iget-object v1, v0, Lato;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, v0, Lato;->d:Latm;

    invoke-virtual {v1}, Lasp;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lato;->k:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, v0, Lato;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Latp;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Latr;

    invoke-direct {v0, p0}, Latr;-><init>(Latp;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    new-instance p1, Latr;

    invoke-direct {p1, p0}, Latr;-><init>(Latp;)V

    return-object p1
.end method
