.class public final Lmkf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lmjw;


# instance fields
.field public final b:Lmjw;

.field final c:Lmjw;

.field final d:Lmjw;

.field final e:Lmjw;

.field final f:Lmjy;

.field final g:Lmjy;

.field final h:Lmjy;

.field final i:Lmjy;

.field final j:Lmjy;

.field final k:Lmjy;

.field final l:Lmjy;

.field final m:Lmjy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmkc;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lmkc;-><init>(F)V

    sput-object v0, Lmkf;->a:Lmjw;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmjy;->k()Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmkf;->j:Lmjy;

    invoke-static {}, Lmjy;->k()Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmkf;->k:Lmjy;

    invoke-static {}, Lmjy;->k()Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmkf;->l:Lmjy;

    invoke-static {}, Lmjy;->k()Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmkf;->m:Lmjy;

    new-instance v0, Lmju;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmju;-><init>(F)V

    iput-object v0, p0, Lmkf;->b:Lmjw;

    new-instance v0, Lmju;

    invoke-direct {v0, v1}, Lmju;-><init>(F)V

    iput-object v0, p0, Lmkf;->c:Lmjw;

    new-instance v0, Lmju;

    invoke-direct {v0, v1}, Lmju;-><init>(F)V

    iput-object v0, p0, Lmkf;->d:Lmjw;

    new-instance v0, Lmju;

    invoke-direct {v0, v1}, Lmju;-><init>(F)V

    iput-object v0, p0, Lmkf;->e:Lmjw;

    invoke-static {}, Lmjy;->f()Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmkf;->f:Lmjy;

    invoke-static {}, Lmjy;->f()Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmkf;->g:Lmjy;

    invoke-static {}, Lmjy;->f()Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmkf;->h:Lmjy;

    invoke-static {}, Lmjy;->f()Lmjy;

    move-result-object v0

    iput-object v0, p0, Lmkf;->i:Lmjy;

    return-void
.end method

.method public constructor <init>(Lmke;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lmke;->i:Lmjy;

    iput-object v0, p0, Lmkf;->j:Lmjy;

    iget-object v0, p1, Lmke;->j:Lmjy;

    iput-object v0, p0, Lmkf;->k:Lmjy;

    iget-object v0, p1, Lmke;->k:Lmjy;

    iput-object v0, p0, Lmkf;->l:Lmjy;

    iget-object v0, p1, Lmke;->l:Lmjy;

    iput-object v0, p0, Lmkf;->m:Lmjy;

    iget-object v0, p1, Lmke;->a:Lmjw;

    iput-object v0, p0, Lmkf;->b:Lmjw;

    iget-object v0, p1, Lmke;->b:Lmjw;

    iput-object v0, p0, Lmkf;->c:Lmjw;

    iget-object v0, p1, Lmke;->c:Lmjw;

    iput-object v0, p0, Lmkf;->d:Lmjw;

    iget-object v0, p1, Lmke;->d:Lmjw;

    iput-object v0, p0, Lmkf;->e:Lmjw;

    iget-object v0, p1, Lmke;->e:Lmjy;

    iput-object v0, p0, Lmkf;->f:Lmjy;

    iget-object v0, p1, Lmke;->f:Lmjy;

    iput-object v0, p0, Lmkf;->g:Lmjy;

    iget-object v0, p1, Lmke;->g:Lmjy;

    iput-object v0, p0, Lmkf;->h:Lmjy;

    iget-object p1, p1, Lmke;->h:Lmjy;

    iput-object p1, p0, Lmkf;->i:Lmjy;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lmke;
    .locals 2

    new-instance v0, Lmju;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmju;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lmkf;->b(Landroid/content/Context;Landroid/util/AttributeSet;IILmjw;)Lmke;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;IILmjw;)Lmke;
    .locals 5

    sget-object v0, Lmkb;->a:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-direct {p1, p0, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    if-eqz v1, :cond_0

    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, p0

    goto :goto_0

    :cond_0
    :goto_0
    sget-object p0, Lmkb;->b:[I

    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v0, 0x5

    invoke-static {p0, v0, p4}, Lmkf;->f(Landroid/content/res/TypedArray;ILmjw;)Lmjw;

    move-result-object p4

    const/16 v0, 0x8

    invoke-static {p0, v0, p4}, Lmkf;->f(Landroid/content/res/TypedArray;ILmjw;)Lmjw;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {p0, v2, p4}, Lmkf;->f(Landroid/content/res/TypedArray;ILmjw;)Lmjw;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {p0, v3, p4}, Lmkf;->f(Landroid/content/res/TypedArray;ILmjw;)Lmjw;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {p0, v4, p4}, Lmkf;->f(Landroid/content/res/TypedArray;ILmjw;)Lmjw;

    move-result-object p4

    new-instance v4, Lmke;

    invoke-direct {v4}, Lmke;-><init>()V

    invoke-static {p2}, Lmjy;->j(I)Lmjy;

    move-result-object p2

    iput-object p2, v4, Lmke;->i:Lmjy;

    invoke-static {p2}, Lmke;->b(Lmjy;)V

    iput-object v0, v4, Lmke;->a:Lmjw;

    invoke-static {p3}, Lmjy;->j(I)Lmjy;

    move-result-object p2

    iput-object p2, v4, Lmke;->j:Lmjy;

    invoke-static {p2}, Lmke;->b(Lmjy;)V

    iput-object v2, v4, Lmke;->b:Lmjw;

    invoke-static {v1}, Lmjy;->j(I)Lmjy;

    move-result-object p2

    iput-object p2, v4, Lmke;->k:Lmjy;

    invoke-static {p2}, Lmke;->b(Lmjy;)V

    iput-object v3, v4, Lmke;->c:Lmjw;

    invoke-static {p1}, Lmjy;->j(I)Lmjy;

    move-result-object p1

    iput-object p1, v4, Lmke;->l:Lmjy;

    invoke-static {p1}, Lmke;->b(Lmjy;)V

    iput-object p4, v4, Lmke;->d:Lmjw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static f(Landroid/content/res/TypedArray;ILmjw;)Lmjw;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Lmju;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lmju;-><init>(F)V

    return-object p2

    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    new-instance p0, Lmkc;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lmkc;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public final c()Lmke;
    .locals 1

    new-instance v0, Lmke;

    invoke-direct {v0, p0}, Lmke;-><init>(Lmkf;)V

    return-object v0
.end method

.method public final d(F)Lmkf;
    .locals 2

    invoke-virtual {p0}, Lmkf;->c()Lmke;

    move-result-object v0

    new-instance v1, Lmju;

    invoke-direct {v1, p1}, Lmju;-><init>(F)V

    iput-object v1, v0, Lmke;->a:Lmjw;

    new-instance v1, Lmju;

    invoke-direct {v1, p1}, Lmju;-><init>(F)V

    iput-object v1, v0, Lmke;->b:Lmjw;

    new-instance v1, Lmju;

    invoke-direct {v1, p1}, Lmju;-><init>(F)V

    iput-object v1, v0, Lmke;->c:Lmjw;

    new-instance v1, Lmju;

    invoke-direct {v1, p1}, Lmju;-><init>(F)V

    iput-object v1, v0, Lmke;->d:Lmjw;

    invoke-virtual {v0}, Lmke;->a()Lmkf;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/graphics/RectF;)Z
    .locals 5

    iget-object v0, p0, Lmkf;->i:Lmjy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmjy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmkf;->g:Lmjy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lmjy;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmkf;->f:Lmjy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lmjy;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmkf;->h:Lmjy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lmjy;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lmkf;->b:Lmjw;

    invoke-interface {v3, p1}, Lmjw;->a(Landroid/graphics/RectF;)F

    move-result v3

    iget-object v4, p0, Lmkf;->c:Lmjw;

    invoke-interface {v4, p1}, Lmjw;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lmkf;->e:Lmjw;

    invoke-interface {v4, p1}, Lmjw;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lmkf;->d:Lmjw;

    invoke-interface {v4, p1}, Lmjw;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v3, p0, Lmkf;->k:Lmjy;

    instance-of v3, v3, Lmkd;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmkf;->j:Lmjy;

    instance-of v3, v3, Lmkd;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmkf;->l:Lmjy;

    instance-of v3, v3, Lmkd;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmkf;->m:Lmjy;

    instance-of v3, v3, Lmkd;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    return v2
.end method
