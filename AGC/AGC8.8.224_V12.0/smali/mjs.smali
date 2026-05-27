.class public final Lmjs;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Landroid/content/res/ColorStateList;

.field public final j:F

.field public k:Landroid/graphics/Typeface;

.field private final l:I

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmjs;->m:Z

    sget-object v1, Lmjq;->b:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lmjs;->j:F

    const/4 v3, 0x3

    invoke-static {p1, v1, v3}, Lljr;->s(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lmjs;->i:Landroid/content/res/ColorStateList;

    const/4 v3, 0x4

    invoke-static {p1, v1, v3}, Lljr;->s(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v3, 0x5

    invoke-static {p1, v1, v3}, Lljr;->s(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lmjs;->c:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lmjs;->d:I

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eq v3, v5, :cond_0

    const/16 v4, 0xa

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lmjs;->l:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmjs;->b:Ljava/lang/String;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 v3, 0x6

    invoke-static {p1, v1, v3}, Lljr;->s(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lmjs;->a:Landroid/content/res/ColorStateList;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lmjs;->e:F

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lmjs;->f:F

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lmjs;->g:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lmjq;->a:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmjs;->h:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static bridge synthetic b(Lmjs;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmjs;->m:Z

    return-void
.end method

.method private final e()V
    .locals 2

    iget-object v0, p0, Lmjs;->k:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmjs;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lmjs;->c:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lmjs;->k:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lmjs;->k:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    iget v0, p0, Lmjs;->d:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lmjs;->k:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    iput-object v0, p0, Lmjs;->k:Landroid/graphics/Typeface;

    :goto_1
    iget-object v0, p0, Lmjs;->k:Landroid/graphics/Typeface;

    iget v1, p0, Lmjs;->c:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lmjs;->k:Landroid/graphics/Typeface;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Landroid/graphics/Typeface;
    .locals 1

    invoke-direct {p0}, Lmjs;->e()V

    iget-object v0, p0, Lmjs;->k:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 8

    iget-boolean v0, p0, Lmjs;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget v2, p0, Lmjs;->l:I

    sget-object v0, Lacn;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lacn;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILacl;ZZ)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lmjs;->k:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    iget v0, p0, Lmjs;->c:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lmjs;->k:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :cond_2
    :goto_1
    invoke-direct {p0}, Lmjs;->e()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmjs;->m:Z

    return-void
.end method

.method public final d(Landroid/content/Context;Lbza;)V
    .locals 8

    iget v1, p0, Lmjs;->l:I

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    sget-object v0, Lacn;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lacn;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILacl;ZZ)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lmjs;->c(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lmjs;->e()V

    :goto_1
    iget v0, p0, Lmjs;->l:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lmjs;->m:Z

    const/4 v0, 0x0

    :cond_3
    iget-boolean v2, p0, Lmjs;->m:Z

    if-nez v2, :cond_4

    :try_start_0
    new-instance v2, Lmjr;

    invoke-direct {v2, p0, p2, v7}, Lmjr;-><init>(Lmjs;Lbza;[B)V

    invoke-static {p1, v0, v2}, Lacn;->a(Landroid/content/Context;ILacl;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-boolean v1, p0, Lmjs;->m:Z

    invoke-virtual {p2}, Lbza;->f()V

    return-void

    :catch_1
    move-exception p1

    iput-boolean v1, p0, Lmjs;->m:Z

    invoke-virtual {p2}, Lbza;->f()V

    return-void

    :cond_4
    iget-object p1, p0, Lmjs;->k:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1}, Lbza;->e(Landroid/graphics/Typeface;)V

    return-void
.end method
