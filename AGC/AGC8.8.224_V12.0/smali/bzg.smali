.class public Lbzg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:F

.field public b:Lbry;

.field public c:Lbos;

.field public d:I

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Lbqb;

.field public k:Z

.field public l:Z

.field public m:Lbqf;

.field public n:Ljava/util/Map;

.field public o:Ljava/lang/Class;

.field public p:Landroid/content/res/Resources$Theme;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field private u:I

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbzg;->a:F

    sget-object v0, Lbry;->c:Lbry;

    iput-object v0, p0, Lbzg;->b:Lbry;

    sget-object v0, Lbos;->c:Lbos;

    iput-object v0, p0, Lbzg;->c:Lbos;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzg;->g:Z

    const/4 v1, -0x1

    iput v1, p0, Lbzg;->h:I

    iput v1, p0, Lbzg;->i:I

    sget-object v1, Lcaf;->b:Lcaf;

    iput-object v1, p0, Lbzg;->j:Lbqb;

    iput-boolean v0, p0, Lbzg;->l:Z

    new-instance v1, Lbqf;

    invoke-direct {v1}, Lbqf;-><init>()V

    iput-object v1, p0, Lbzg;->m:Lbqf;

    new-instance v1, Lcak;

    invoke-direct {v1}, Lcak;-><init>()V

    iput-object v1, p0, Lbzg;->n:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lbzg;->o:Ljava/lang/Class;

    iput-boolean v0, p0, Lbzg;->s:Z

    return-void
.end method

.method private final a(Lbwm;Lbqj;Z)Lbzg;
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lbzg;->D(Lbwm;Lbqj;)Lbzg;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lbzg;->t(Lbwm;Lbqj;)Lbzg;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, p1, Lbzg;->s:Z

    return-object p1
.end method

.method private static b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A(Landroid/content/res/Resources$Theme;)Lbzg;
    .locals 2

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbzg;->A(Landroid/content/res/Resources$Theme;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lbzg;->p:Landroid/content/res/Resources$Theme;

    if-eqz p1, :cond_1

    iget v0, p0, Lbzg;->u:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lbzg;->u:I

    sget-object v0, Lbxr;->a:Lbqe;

    invoke-virtual {p0, v0, p1}, Lbzg;->y(Lbqe;Ljava/lang/Object;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_1
    iget p1, p0, Lbzg;->u:I

    const v0, -0x8001

    and-int/2addr p1, v0

    iput p1, p0, Lbzg;->u:I

    sget-object p1, Lbxr;->a:Lbqe;

    invoke-virtual {p0, p1}, Lbzg;->x(Lbqe;)Lbzg;

    move-result-object p1

    return-object p1
.end method

.method public final B(Lbqj;)Lbzg;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbzg;->C(Lbqj;Z)Lbzg;

    move-result-object p1

    return-object p1
.end method

.method final C(Lbqj;Z)Lbzg;
    .locals 2

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbzg;->C(Lbqj;Z)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lbws;

    invoke-direct {v0, p1, p2}, Lbws;-><init>(Lbqj;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lbzg;->E(Ljava/lang/Class;Lbqj;Z)Lbzg;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lbzg;->E(Ljava/lang/Class;Lbqj;Z)Lbzg;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lbzg;->E(Ljava/lang/Class;Lbqj;Z)Lbzg;

    new-instance v0, Lbxy;

    invoke-direct {v0, p1}, Lbxy;-><init>(Lbqj;)V

    const-class p1, Lbxv;

    invoke-virtual {p0, p1, v0, p2}, Lbzg;->E(Ljava/lang/Class;Lbqj;Z)Lbzg;

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method final D(Lbwm;Lbqj;)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbzg;->D(Lbwm;Lbqj;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lbzg;->H(Lbwm;)V

    invoke-virtual {p0, p2}, Lbzg;->B(Lbqj;)Lbzg;

    move-result-object p1

    return-object p1
.end method

.method final E(Ljava/lang/Class;Lbqj;Z)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbzg;->E(Ljava/lang/Class;Lbqj;Z)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    invoke-static {p2}, Lbze;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lbzg;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lbzg;->u:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lbzg;->l:Z

    const v0, 0x10800

    or-int/2addr p1, v0

    iput p1, p0, Lbzg;->u:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbzg;->s:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, p0, Lbzg;->u:I

    iput-boolean p2, p0, Lbzg;->k:Z

    :cond_1
    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final F(I)Z
    .locals 1

    iget v0, p0, Lbzg;->u:I

    invoke-static {v0, p1}, Lbzg;->b(II)Z

    move-result p1

    return p1
.end method

.method public final G()Z
    .locals 2

    iget v0, p0, Lbzg;->i:I

    iget v1, p0, Lbzg;->h:I

    invoke-static {v0, v1}, Lcaw;->n(II)Z

    move-result v0

    return v0
.end method

.method public final H(Lbwm;)V
    .locals 1

    sget-object v0, Lbwm;->f:Lbqe;

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lbzg;->y(Lbqe;Ljava/lang/Object;)Lbzg;

    return-void
.end method

.method public final I()Lbzg;
    .locals 2

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->I()Lbzg;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f08034a

    iput v0, p0, Lbzg;->d:I

    iget v0, p0, Lbzg;->u:I

    or-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    iput-object v1, p0, Lbzg;->v:Landroid/graphics/drawable/Drawable;

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final J()Lbzg;
    .locals 2

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->J()Lbzg;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzg;->r:Z

    iget v0, p0, Lbzg;->u:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final K()Lbzg;
    .locals 2

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->K()Lbzg;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0607a0

    iput v0, p0, Lbzg;->f:I

    iget v0, p0, Lbzg;->u:I

    or-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    iput-object v1, p0, Lbzg;->e:Landroid/graphics/drawable/Drawable;

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final L()Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->L()Lbzg;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbzg;->g:Z

    iget v0, p0, Lbzg;->u:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final M()Lbzg;
    .locals 2

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->M()Lbzg;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzg;->t:Z

    iget v0, p0, Lbzg;->u:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final N()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzg;->y:Z

    return-void
.end method

.method protected final O()V
    .locals 2

    iget-boolean v0, p0, Lbzg;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final P()V
    .locals 2

    iget-boolean v0, p0, Lbzg;->y:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzg;->q:Z

    invoke-virtual {p0}, Lbzg;->N()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lbzg;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lbzg;

    iget v0, p1, Lbzg;->a:F

    iget v2, p0, Lbzg;->a:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lbzg;->d:I

    iget v2, p1, Lbzg;->d:I

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lbzg;->v:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcaw;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lbzg;->f:I

    iget v3, p1, Lbzg;->f:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lbzg;->e:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lbzg;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcaw;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lbzg;->x:I

    iget-object v2, p1, Lbzg;->w:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v0}, Lcaw;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbzg;->g:Z

    iget-boolean v2, p1, Lbzg;->g:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lbzg;->h:I

    iget v2, p1, Lbzg;->h:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lbzg;->i:I

    iget v2, p1, Lbzg;->i:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lbzg;->k:Z

    iget-boolean v2, p1, Lbzg;->k:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lbzg;->l:Z

    iget-boolean v2, p1, Lbzg;->l:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p1, Lbzg;->z:Z

    iget-boolean v0, p0, Lbzg;->r:Z

    iget-boolean v2, p1, Lbzg;->r:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lbzg;->b:Lbry;

    iget-object v2, p1, Lbzg;->b:Lbry;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbzg;->c:Lbos;

    iget-object v2, p1, Lbzg;->c:Lbos;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lbzg;->m:Lbqf;

    iget-object v2, p1, Lbzg;->m:Lbqf;

    invoke-virtual {v0, v2}, Lbqf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbzg;->n:Ljava/util/Map;

    iget-object v2, p1, Lbzg;->n:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbzg;->o:Ljava/lang/Class;

    iget-object v2, p1, Lbzg;->o:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbzg;->j:Lbqb;

    iget-object v2, p1, Lbzg;->j:Lbqb;

    invoke-static {v0, v2}, Lcaw;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbzg;->p:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lbzg;->p:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p1}, Lcaw;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public h(Lbzg;)Lbzg;
    .locals 4

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbzg;->h(Lbzg;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lbzg;->u:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lbzg;->a:F

    iput v1, p0, Lbzg;->a:F

    :cond_1
    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lbzg;->z:Z

    iput-boolean v2, p0, Lbzg;->z:Z

    :cond_2
    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lbzg;->t:Z

    iput-boolean v1, p0, Lbzg;->t:Z

    :cond_3
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lbzg;->b:Lbry;

    iput-object v1, p0, Lbzg;->b:Lbry;

    :cond_4
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lbzg;->c:Lbos;

    iput-object v1, p0, Lbzg;->c:Lbos;

    :cond_5
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lbzg;->v:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lbzg;->v:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lbzg;->d:I

    iget v0, p0, Lbzg;->u:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lbzg;->u:I

    :cond_6
    iget v0, p1, Lbzg;->u:I

    const/16 v3, 0x20

    invoke-static {v0, v3}, Lbzg;->b(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lbzg;->d:I

    iput v0, p0, Lbzg;->d:I

    iput-object v1, p0, Lbzg;->v:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lbzg;->u:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lbzg;->u:I

    :cond_7
    iget v0, p1, Lbzg;->u:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lbzg;->b(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lbzg;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lbzg;->e:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lbzg;->f:I

    iget v0, p0, Lbzg;->u:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lbzg;->u:I

    :cond_8
    iget v0, p1, Lbzg;->u:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lbzg;->b(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lbzg;->f:I

    iput v0, p0, Lbzg;->f:I

    iput-object v1, p0, Lbzg;->e:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lbzg;->u:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lbzg;->u:I

    :cond_9
    iget v0, p1, Lbzg;->u:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lbzg;->b(II)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p1, Lbzg;->g:Z

    iput-boolean v3, p0, Lbzg;->g:Z

    :cond_a
    const/16 v3, 0x200

    invoke-static {v0, v3}, Lbzg;->b(II)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p1, Lbzg;->i:I

    iput v3, p0, Lbzg;->i:I

    iget v3, p1, Lbzg;->h:I

    iput v3, p0, Lbzg;->h:I

    :cond_b
    const/16 v3, 0x400

    invoke-static {v0, v3}, Lbzg;->b(II)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p1, Lbzg;->j:Lbqb;

    iput-object v3, p0, Lbzg;->j:Lbqb;

    :cond_c
    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lbzg;->b(II)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p1, Lbzg;->o:Ljava/lang/Class;

    iput-object v3, p0, Lbzg;->o:Ljava/lang/Class;

    :cond_d
    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lbzg;->b(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lbzg;->w:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lbzg;->w:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lbzg;->x:I

    iget v0, p0, Lbzg;->u:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lbzg;->u:I

    :cond_e
    iget v0, p1, Lbzg;->u:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lbzg;->b(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p1, Lbzg;->x:I

    iput v2, p0, Lbzg;->x:I

    iput-object v1, p0, Lbzg;->w:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lbzg;->u:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lbzg;->u:I

    :cond_f
    iget v0, p1, Lbzg;->u:I

    const v1, 0x8000

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p1, Lbzg;->p:Landroid/content/res/Resources$Theme;

    iput-object v1, p0, Lbzg;->p:Landroid/content/res/Resources$Theme;

    :cond_10
    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p1, Lbzg;->l:Z

    iput-boolean v1, p0, Lbzg;->l:Z

    :cond_11
    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p1, Lbzg;->k:Z

    iput-boolean v1, p0, Lbzg;->k:Z

    :cond_12
    const/16 v1, 0x800

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbzg;->n:Ljava/util/Map;

    iget-object v1, p1, Lbzg;->n:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lbzg;->s:Z

    iput-boolean v0, p0, Lbzg;->s:Z

    :cond_13
    iget v0, p1, Lbzg;->u:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lbzg;->b(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lbzg;->r:Z

    iput-boolean v0, p0, Lbzg;->r:Z

    :cond_14
    iget-boolean v0, p0, Lbzg;->l:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lbzg;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lbzg;->u:I

    iput-boolean v2, p0, Lbzg;->k:Z

    const v1, -0x20801

    and-int/2addr v0, v1

    iput v0, p0, Lbzg;->u:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzg;->s:Z

    :cond_15
    iget v0, p0, Lbzg;->u:I

    iget v1, p1, Lbzg;->u:I

    or-int/2addr v0, v1

    iput v0, p0, Lbzg;->u:I

    iget-object v0, p0, Lbzg;->m:Lbqf;

    iget-object p1, p1, Lbzg;->m:Lbqf;

    invoke-virtual {v0, p1}, Lbqf;->c(Lbqf;)V

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lbzg;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcaw;->c(II)I

    move-result v0

    iget v1, p0, Lbzg;->d:I

    invoke-static {v1, v0}, Lcaw;->c(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget v2, p0, Lbzg;->f:I

    invoke-static {v2, v0}, Lcaw;->c(II)I

    move-result v0

    iget-object v2, p0, Lbzg;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcaw;->c(II)I

    move-result v0

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lbzg;->g:Z

    invoke-static {v1, v0}, Lcaw;->c(II)I

    move-result v0

    iget v1, p0, Lbzg;->h:I

    invoke-static {v1, v0}, Lcaw;->c(II)I

    move-result v0

    iget v1, p0, Lbzg;->i:I

    invoke-static {v1, v0}, Lcaw;->c(II)I

    move-result v0

    iget-boolean v1, p0, Lbzg;->k:Z

    invoke-static {v1, v0}, Lcaw;->c(II)I

    move-result v0

    iget-boolean v1, p0, Lbzg;->l:Z

    invoke-static {v1, v0}, Lcaw;->c(II)I

    move-result v0

    iget-boolean v1, p0, Lbzg;->r:Z

    invoke-static {v2, v0}, Lcaw;->c(II)I

    move-result v0

    invoke-static {v1, v0}, Lcaw;->c(II)I

    move-result v0

    iget-object v1, p0, Lbzg;->b:Lbry;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbzg;->c:Lbos;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbzg;->m:Lbqf;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbzg;->n:Ljava/util/Map;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbzg;->o:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbzg;->j:Lbqb;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lbzg;->p:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i()Lbzg;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzg;

    new-instance v1, Lbqf;

    invoke-direct {v1}, Lbqf;-><init>()V

    iput-object v1, v0, Lbzg;->m:Lbqf;

    iget-object v2, p0, Lbzg;->m:Lbqf;

    invoke-virtual {v1, v2}, Lbqf;->c(Lbqf;)V

    new-instance v1, Lcak;

    invoke-direct {v1}, Lcak;-><init>()V

    iput-object v1, v0, Lbzg;->n:Ljava/util/Map;

    iget-object v2, p0, Lbzg;->n:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbzg;->y:Z

    iput-boolean v1, v0, Lbzg;->q:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final m()Lbzg;
    .locals 2

    sget-object v0, Lbwm;->c:Lbwm;

    new-instance v1, Lbwb;

    invoke-direct {v1}, Lbwb;-><init>()V

    invoke-virtual {p0, v0, v1}, Lbzg;->D(Lbwm;Lbqj;)Lbzg;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/lang/Class;)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbzg;->n(Ljava/lang/Class;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lbzg;->o:Ljava/lang/Class;

    iget p1, p0, Lbzg;->u:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final o(Lbry;)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbzg;->o(Lbry;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lbzg;->b:Lbry;

    iget p1, p0, Lbzg;->u:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final p()Lbzg;
    .locals 3

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0}, Lbzg;->p()Lbzg;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbzg;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lbzg;->u:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbzg;->k:Z

    const v2, -0x20801

    and-int/2addr v0, v2

    iput-boolean v1, p0, Lbzg;->l:Z

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lbzg;->u:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbzg;->s:Z

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final q()Lbzg;
    .locals 3

    sget-object v0, Lbwm;->a:Lbwm;

    new-instance v1, Lbwu;

    invoke-direct {v1}, Lbwu;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lbzg;->a(Lbwm;Lbqj;Z)Lbzg;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lbzg;
    .locals 2

    sget-object v0, Lbwm;->b:Lbwm;

    new-instance v1, Lbwc;

    invoke-direct {v1}, Lbwc;-><init>()V

    invoke-virtual {p0, v0, v1}, Lbzg;->s(Lbwm;Lbqj;)Lbzg;

    move-result-object v0

    return-object v0
.end method

.method public final s(Lbwm;Lbqj;)Lbzg;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbzg;->a(Lbwm;Lbqj;Z)Lbzg;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lbwm;Lbqj;)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbzg;->t(Lbwm;Lbqj;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lbzg;->H(Lbwm;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lbzg;->C(Lbqj;Z)Lbzg;

    move-result-object p1

    return-object p1
.end method

.method public final u(II)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbzg;->u(II)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lbzg;->i:I

    iput p2, p0, Lbzg;->h:I

    iget p1, p0, Lbzg;->u:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final v(Landroid/graphics/drawable/Drawable;)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbzg;->v(Landroid/graphics/drawable/Drawable;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lbzg;->e:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lbzg;->u:I

    or-int/lit8 p1, p1, 0x40

    const/4 v0, 0x0

    iput v0, p0, Lbzg;->f:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final w(Lbos;)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbzg;->w(Lbos;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lbzg;->c:Lbos;

    iget p1, p0, Lbzg;->u:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method final x(Lbqe;)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbzg;->x(Lbqe;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lbzg;->m:Lbqf;

    iget-object v0, v0, Lbqf;->b:Lwy;

    invoke-virtual {v0, p1}, Lxf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final y(Lbqe;Ljava/lang/Object;)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbzg;->y(Lbqe;Ljava/lang/Object;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    invoke-static {p2}, Lbze;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lbzg;->m:Lbqf;

    invoke-virtual {v0, p1, p2}, Lbqf;->d(Lbqe;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method

.method public final z(Lbqb;)Lbzg;
    .locals 1

    iget-boolean v0, p0, Lbzg;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbzg;->i()Lbzg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbzg;->z(Lbqb;)Lbzg;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lbzg;->j:Lbqb;

    iget p1, p0, Lbzg;->u:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lbzg;->u:I

    invoke-virtual {p0}, Lbzg;->O()V

    return-object p0
.end method
