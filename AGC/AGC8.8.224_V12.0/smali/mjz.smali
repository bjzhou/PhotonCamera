.class public final Lmjz;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field public a:Lmkf;

.field public b:Lmgx;

.field public c:Landroid/graphics/ColorFilter;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Landroid/graphics/Rect;

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Lmjz;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmjz;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lmjz;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lmjz;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lmjz;->g:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lmjz;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmjz;->i:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmjz;->j:F

    iput v1, p0, Lmjz;->k:F

    const/16 v1, 0xff

    iput v1, p0, Lmjz;->m:I

    const/4 v1, 0x0

    iput v1, p0, Lmjz;->n:F

    iput v1, p0, Lmjz;->o:F

    iput v1, p0, Lmjz;->p:F

    const/4 v2, 0x0

    iput v2, p0, Lmjz;->q:I

    iput v2, p0, Lmjz;->r:I

    iput v2, p0, Lmjz;->s:I

    iput v2, p0, Lmjz;->t:I

    iput-boolean v2, p0, Lmjz;->u:Z

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v3, p0, Lmjz;->v:Landroid/graphics/Paint$Style;

    iget-object v3, p1, Lmjz;->a:Lmkf;

    iput-object v3, p0, Lmjz;->a:Lmkf;

    iget-object v3, p1, Lmjz;->b:Lmgx;

    iput-object v3, p0, Lmjz;->b:Lmgx;

    iget v3, p1, Lmjz;->l:F

    iput v3, p0, Lmjz;->l:F

    iget-object v3, p1, Lmjz;->c:Landroid/graphics/ColorFilter;

    iput-object v3, p0, Lmjz;->c:Landroid/graphics/ColorFilter;

    iget-object v3, p1, Lmjz;->d:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lmjz;->d:Landroid/content/res/ColorStateList;

    iget-object v3, p1, Lmjz;->e:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lmjz;->e:Landroid/content/res/ColorStateList;

    iget-object v3, p1, Lmjz;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, p0, Lmjz;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, p1, Lmjz;->g:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lmjz;->g:Landroid/content/res/ColorStateList;

    iget v3, p1, Lmjz;->m:I

    iput v3, p0, Lmjz;->m:I

    iget v3, p1, Lmjz;->j:F

    iput v3, p0, Lmjz;->j:F

    iget v3, p1, Lmjz;->s:I

    iput v3, p0, Lmjz;->s:I

    iget v3, p1, Lmjz;->q:I

    iput v2, p0, Lmjz;->q:I

    iget-boolean v3, p1, Lmjz;->u:Z

    iput-boolean v2, p0, Lmjz;->u:Z

    iget v3, p1, Lmjz;->k:F

    iput v3, p0, Lmjz;->k:F

    iget v3, p1, Lmjz;->n:F

    iput v3, p0, Lmjz;->n:F

    iget v3, p1, Lmjz;->o:F

    iput v3, p0, Lmjz;->o:F

    iget v3, p1, Lmjz;->p:F

    iput v1, p0, Lmjz;->p:F

    iget v1, p1, Lmjz;->r:I

    iput v1, p0, Lmjz;->r:I

    iget v1, p1, Lmjz;->t:I

    iput v2, p0, Lmjz;->t:I

    iget-object v1, p1, Lmjz;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lmjz;->f:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lmjz;->v:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lmjz;->v:Landroid/graphics/Paint$Style;

    iget-object p1, p1, Lmjz;->i:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lmjz;->i:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lmkf;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmjz;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lmjz;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lmjz;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lmjz;->g:Landroid/content/res/ColorStateList;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lmjz;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmjz;->i:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmjz;->j:F

    iput v1, p0, Lmjz;->k:F

    const/16 v1, 0xff

    iput v1, p0, Lmjz;->m:I

    const/4 v1, 0x0

    iput v1, p0, Lmjz;->n:F

    iput v1, p0, Lmjz;->o:F

    iput v1, p0, Lmjz;->p:F

    const/4 v1, 0x0

    iput v1, p0, Lmjz;->q:I

    iput v1, p0, Lmjz;->r:I

    iput v1, p0, Lmjz;->s:I

    iput v1, p0, Lmjz;->t:I

    iput-boolean v1, p0, Lmjz;->u:Z

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, p0, Lmjz;->v:Landroid/graphics/Paint$Style;

    iput-object p1, p0, Lmjz;->a:Lmkf;

    iput-object v0, p0, Lmjz;->b:Lmgx;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lmka;

    invoke-direct {v0, p0}, Lmka;-><init>(Lmjz;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmka;->e:Z

    return-object v0
.end method
