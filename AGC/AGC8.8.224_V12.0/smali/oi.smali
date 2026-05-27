.class public final Loi;
.super Ljava/lang/Object;


# instance fields
.field public A:Log;

.field private B:Ljava/lang/CharSequence;

.field private C:Z

.field private D:Z

.field private final E:Landroid/graphics/Rect;

.field private F:Loj;

.field public final a:Landroid/content/Context;

.field public b:Landroid/support/wearable/complications/ComplicationData;

.field public final c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/graphics/drawable/Drawable;

.field public final i:Lol;

.field public final j:Lol;

.field public final k:Lol;

.field public final l:Lom;

.field public final m:Lom;

.field public final n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/RectF;

.field public final p:Landroid/graphics/Rect;

.field public final q:Landroid/graphics/Rect;

.field public final r:Landroid/graphics/Rect;

.field public final s:Landroid/graphics/Rect;

.field public final t:Landroid/graphics/Rect;

.field public final u:Landroid/graphics/RectF;

.field public v:Loh;

.field public w:Loh;

.field public x:Landroid/text/TextPaint;

.field public y:Landroid/text/TextPaint;

.field public z:Loj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Loj;Loj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Loi;->c:Landroid/graphics/Rect;

    const-string v0, ""

    iput-object v0, p0, Loi;->B:Ljava/lang/CharSequence;

    new-instance v0, Lol;

    invoke-direct {v0}, Lol;-><init>()V

    iput-object v0, p0, Loi;->i:Lol;

    new-instance v0, Lol;

    invoke-direct {v0}, Lol;-><init>()V

    iput-object v0, p0, Loi;->j:Lol;

    new-instance v0, Lol;

    invoke-direct {v0}, Lol;-><init>()V

    iput-object v0, p0, Loi;->k:Lol;

    new-instance v0, Lom;

    invoke-direct {v0}, Lom;-><init>()V

    iput-object v0, p0, Loi;->l:Lom;

    new-instance v0, Lom;

    invoke-direct {v0}, Lom;-><init>()V

    iput-object v0, p0, Loi;->m:Lom;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Loi;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Loi;->o:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Loi;->p:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Loi;->q:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Loi;->r:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Loi;->s:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Loi;->t:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Loi;->E:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Loi;->u:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-object v0, p0, Loi;->v:Loh;

    iput-object v0, p0, Loi;->w:Loh;

    iput-object v0, p0, Loi;->x:Landroid/text/TextPaint;

    iput-object v0, p0, Loi;->y:Landroid/text/TextPaint;

    iput-object p1, p0, Loi;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Loi;->g(Loj;Loj;)V

    return-void
.end method

.method private final i()V
    .locals 7

    iget-object v0, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    if-eqz v0, :cond_a

    iget-object v0, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Loi;->n:Landroid/graphics/Rect;

    iget-object v1, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Loi;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    iget v1, v0, Landroid/support/wearable/complications/ComplicationData;->b:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lop;

    invoke-direct {v0}, Lop;-><init>()V

    goto :goto_0

    :pswitch_0
    new-instance v0, Loo;

    invoke-direct {v0}, Loo;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lot;

    invoke-direct {v0}, Lot;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lon;

    invoke-direct {v0}, Lon;-><init>()V

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Loi;->C:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->h()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lon;

    invoke-direct {v0}, Lon;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Los;

    invoke-direct {v0}, Los;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lor;

    invoke-direct {v0}, Lor;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Loq;

    invoke-direct {v0}, Loq;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Los;

    invoke-direct {v0}, Los;-><init>()V

    :goto_0
    iget-object v1, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0, v1, v2, v4}, Lop;->u(IILandroid/support/wearable/complications/ComplicationData;)V

    iget-object v1, p0, Loi;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lop;->n(Landroid/graphics/Rect;)V

    iget-object v1, p0, Loi;->u:Landroid/graphics/RectF;

    iget-object v2, p0, Loi;->E:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Loi;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lop;->a(Landroid/graphics/Rect;)V

    iget-object v1, p0, Loi;->q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lop;->q(Landroid/graphics/Rect;)V

    iget-object v1, p0, Loi;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lop;->b(Landroid/graphics/Rect;)V

    iget-object v1, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    iget v1, v1, Landroid/support/wearable/complications/ComplicationData;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lop;->g()Landroid/text/Layout$Alignment;

    move-result-object v1

    iget-object v2, p0, Loi;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lop;->l(Landroid/graphics/Rect;)V

    iget-object v2, p0, Loi;->l:Lom;

    invoke-virtual {v2, v1}, Lom;->b(Landroid/text/Layout$Alignment;)V

    iget-object v2, p0, Loi;->l:Lom;

    invoke-virtual {v0}, Lop;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Lom;->c(I)V

    iget-object v2, p0, Loi;->t:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lop;->m(Landroid/graphics/Rect;)V

    iget-object v2, p0, Loi;->m:Lom;

    invoke-virtual {v0}, Lop;->h()Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v2, v4}, Lom;->b(Landroid/text/Layout$Alignment;)V

    iget-object v2, p0, Loi;->m:Lom;

    invoke-virtual {v0}, Lop;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Lom;->c(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lop;->i()Landroid/text/Layout$Alignment;

    move-result-object v1

    iget-object v2, p0, Loi;->s:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lop;->o(Landroid/graphics/Rect;)V

    iget-object v2, p0, Loi;->l:Lom;

    invoke-virtual {v2, v1}, Lom;->b(Landroid/text/Layout$Alignment;)V

    iget-object v2, p0, Loi;->l:Lom;

    invoke-virtual {v0}, Lop;->e()I

    move-result v4

    invoke-virtual {v2, v4}, Lom;->c(I)V

    iget-object v2, p0, Loi;->t:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lop;->p(Landroid/graphics/Rect;)V

    iget-object v2, p0, Loi;->m:Lom;

    invoke-virtual {v0}, Lop;->j()Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v2, v4}, Lom;->b(Landroid/text/Layout$Alignment;)V

    iget-object v2, p0, Loi;->m:Lom;

    invoke-virtual {v0}, Lop;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Lom;->c(I)V

    :goto_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Loi;->l:Lom;

    iget-object v2, p0, Loi;->s:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v3

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {v1, v2}, Lom;->i(F)V

    iget-object v1, p0, Loi;->m:Lom;

    iget-object v2, p0, Loi;->s:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lom;->i(F)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Loi;->l:Lom;

    invoke-virtual {v0, v3}, Lom;->i(F)V

    iget-object v0, p0, Loi;->m:Lom;

    invoke-virtual {v0, v3}, Lom;->i(F)V

    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Loi;->n:Landroid/graphics/Rect;

    iget-object v2, p0, Loi;->F:Loj;

    invoke-virtual {p0, v2}, Loi;->a(Loj;)I

    move-result v2

    iget-object v3, p0, Loi;->z:Loj;

    invoke-virtual {p0, v3}, Loi;->a(Loj;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    add-double/2addr v3, v5

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v1, p0, Loi;->s:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Loi;->s:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_5
    iget-object v1, p0, Loi;->t:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Loi;->t:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_6
    iget-object v1, p0, Loi;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_7

    iget-object v1, p0, Loi;->p:Landroid/graphics/Rect;

    invoke-static {v1, v1, v2}, Leu;->j(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v1, p0, Loi;->p:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Leu;->d(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7
    iget-object v1, p0, Loi;->q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Loi;->q:Landroid/graphics/Rect;

    const v3, 0x3f733333    # 0.95f

    invoke-static {v1, v1, v3}, Leu;->j(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v1, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v1}, Landroid/support/wearable/complications/ComplicationData;->a()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Loi;->q:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Leu;->d(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_8
    iget-object v0, p0, Loi;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Loi;->r:Landroid/graphics/Rect;

    invoke-static {v0, v0, v2}, Leu;->j(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    :cond_9
    return-void

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(Loj;)I
    .locals 2

    iget-object v0, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Loj;->p:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final b(Loj;Landroid/graphics/Rect;)I
    .locals 4

    iget-object v0, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Loi;->a(Loj;)I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Loi;->A:Log;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Log;->a()V

    :cond_0
    return-void
.end method

.method public final d(Landroid/support/wearable/complications/ComplicationData;)V
    .locals 10

    iget-object v0, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-object v0, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    return-void

    :cond_1
    iget v1, p1, Landroid/support/wearable/complications/ComplicationData;->b:I

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_3

    iget-boolean p1, p0, Loi;->D:Z

    if-nez p1, :cond_2

    iput-boolean v5, p0, Loi;->D:Z

    new-instance p1, Lnz;

    invoke-direct {p1, v3}, Lnz;-><init>(I)V

    iget-object v1, p0, Loi;->B:Ljava/lang/CharSequence;

    new-instance v2, Landroid/support/wearable/complications/ComplicationText;

    invoke-direct {v2, v1}, Landroid/support/wearable/complications/ComplicationText;-><init>(Ljava/lang/CharSequence;)V

    iget v1, p1, Lnz;->a:I

    const-string v6, "SHORT_TEXT"

    invoke-static {v6, v1}, Landroid/support/wearable/complications/ComplicationData;->j(Ljava/lang/String;I)V

    iget-object v1, p1, Lnz;->b:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lnz;->a()Landroid/support/wearable/complications/ComplicationData;

    move-result-object p1

    iput-object p1, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    iput-object p1, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    iput-boolean v4, p0, Loi;->D:Z

    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Loi;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Loi;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Loi;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Loi;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Loi;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/support/wearable/complications/ComplicationData;->c()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    iget v2, v1, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v6, "ICON_BURN_IN_PROTECTION"

    invoke-static {v6, v2}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    iget v6, v2, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v7, "SMALL_IMAGE_BURN_IN_PROTECTION"

    invoke-static {v7, v6}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {v2, v7}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v6}, Landroid/support/wearable/complications/ComplicationData;->d()Landroid/graphics/drawable/Icon;

    move-result-object v6

    iget-object v7, p0, Loi;->b:Landroid/support/wearable/complications/ComplicationData;

    iget v8, v7, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v9, "LARGE_IMAGE"

    invoke-static {v9, v8}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {v7, v9}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    goto :goto_1

    :cond_4
    move-object v1, v0

    move-object v2, v1

    move-object v6, v2

    move-object v7, v6

    :goto_1
    if-eqz v0, :cond_5

    iget-object v8, p0, Loi;->a:Landroid/content/Context;

    new-instance v9, Lof;

    invoke-direct {v9, p0, v5}, Lof;-><init>(Loi;I)V

    invoke-virtual {v0, v8, v9, p1}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Loi;->a:Landroid/content/Context;

    new-instance v8, Lof;

    invoke-direct {v8, p0, v4}, Lof;-><init>(Loi;I)V

    invoke-virtual {v1, v0, v8, p1}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    :cond_6
    if-eqz v6, :cond_7

    iget-object v0, p0, Loi;->a:Landroid/content/Context;

    new-instance v1, Lof;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v4}, Lof;-><init>(Loi;I)V

    invoke-virtual {v6, v0, v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, p0, Loi;->a:Landroid/content/Context;

    new-instance v1, Lof;

    invoke-direct {v1, p0, v3}, Lof;-><init>(Loi;I)V

    invoke-virtual {v2, v0, v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_3

    :cond_8
    move v5, v0

    :goto_3
    if-eqz v7, :cond_9

    iget-object v0, p0, Loi;->a:Landroid/content/Context;

    new-instance v1, Lof;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lof;-><init>(Loi;I)V

    invoke-virtual {v7, v0, v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_4

    :cond_9
    if-nez v5, :cond_a

    invoke-virtual {p0}, Loi;->c()V

    :cond_a
    :goto_4
    invoke-direct {p0}, Loi;->i()V

    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Loi;->B:Ljava/lang/CharSequence;

    iget-boolean p1, p0, Loi;->D:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Loi;->D:Z

    new-instance p1, Lnz;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lnz;-><init>(I)V

    invoke-virtual {p1}, Lnz;->a()Landroid/support/wearable/complications/ComplicationData;

    move-result-object p1

    invoke-virtual {p0, p1}, Loi;->d(Landroid/support/wearable/complications/ComplicationData;)V

    :cond_1
    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Loi;->C:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Loi;->C:Z

    invoke-direct {p0}, Loi;->i()V

    :cond_0
    return-void
.end method

.method public final g(Loj;Loj;)V
    .locals 2

    iput-object p1, p0, Loi;->F:Loj;

    iput-object p2, p0, Loi;->z:Loj;

    new-instance v0, Loh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Loh;-><init>(Loj;ZZZ)V

    iput-object v0, p0, Loi;->v:Loh;

    new-instance p1, Loh;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, v1, v1}, Loh;-><init>(Loj;ZZZ)V

    iput-object p1, p0, Loi;->w:Loh;

    invoke-direct {p0}, Loi;->i()V

    return-void
.end method

.method public final h(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v0, p0, Loi;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v2, :cond_1

    invoke-direct {p0}, Loi;->i()V

    :cond_1
    return-void
.end method
