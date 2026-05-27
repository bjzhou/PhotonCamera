.class public final Lltg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Ljava/util/List;

.field public c:Ljava/lang/reflect/Method;

.field private final d:Landroid/graphics/Matrix;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lltg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lltg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lltg;->b:Ljava/util/List;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lltg;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lltg;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lltg;->f:Landroid/graphics/Rect;

    return-void
.end method

.method static a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/view/View;Ljava/util/Map;)V
    .locals 6

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v5, p2}, Lltg;->b(Landroid/view/View;Ljava/util/Map;)V

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lltf;

    if-eqz v5, :cond_0

    iget v5, v5, Lltf;->a:I

    add-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    :goto_1
    new-instance v0, Lltf;

    invoke-direct {v0}, Lltf;-><init>()V

    iput v1, v0, Lltf;->a:I

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Lva;Landroid/view/View;IILjava/util/Map;)V
    .locals 10

    iget-object v0, p1, Lva;->a:Ljava/lang/Object;

    check-cast v0, Llto;

    const-string v1, "hierarchy_depth"

    invoke-virtual {v0, v1, p3}, Llto;->d(Ljava/lang/CharSequence;I)V

    const-string v1, "index"

    invoke-virtual {v0, v1, p4}, Llto;->d(Ljava/lang/CharSequence;I)V

    invoke-interface {p5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lltf;

    if-eqz p4, :cond_0

    iget p4, p4, Lltf;->a:I

    const-string v1, "hierarchy_height"

    invoke-virtual {v0, v1, p4}, Llto;->d(Ljava/lang/CharSequence;I)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    const-string v1, "class"

    invoke-virtual {v0, v1, p4}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v2, "package"

    invoke-virtual {v0, v2, p4}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p4

    const-string v2, "hashcode"

    invoke-virtual {v0, v2, p4}, Llto;->d(Ljava/lang/CharSequence;I)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {p4, v2}, Lltg;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    const-string v2, "resource_id"

    invoke-virtual {v0, v2, p4}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p4, p0, Lltg;->d:Landroid/graphics/Matrix;

    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    iget-object p4, p0, Lltg;->d:Landroid/graphics/Matrix;

    invoke-virtual {p2, p4}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    iget-object p4, p0, Lltg;->e:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p4, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p4, p0, Lltg;->d:Landroid/graphics/Matrix;

    iget-object v2, p0, Lltg;->e:Landroid/graphics/RectF;

    invoke-virtual {p4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p4, p0, Lltg;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Lltg;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lltg;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lltg;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lltg;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p4, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lltg;->f:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p4

    const-string v2, "bounds"

    invoke-virtual {v0, v2, p4}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lltg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v3, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    iget-object v4, p1, Lva;->a:Ljava/lang/Object;

    check-cast v4, Llto;

    invoke-interface {v3, v4, p2}, Lltc;->a(Llto;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "androidx.compose.ui.platform.ComposeView"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lltg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.libraries.view.hierarchysnapshotter.compose.ComposeExtension"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lva;->J()Lva;

    move-result-object v0

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Llto;

    const-string v3, "\ud83d\ude80 \ud83d\ude80 \ud83d\ude80 See go/hsv-compose \ud83d\ude80 \ud83d\ude80 \ud83d\ude80"

    invoke-virtual {v0, v1, v3}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, p4}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string p4, "description"

    const-string v1, "HSV has support for Compose, but an extension needs to be installed to use it. See go/hsv-compose for more info."

    invoke-virtual {v0, p4, v1}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string p4, "go link"

    const-string v1, "go/hsv-compose"

    invoke-virtual {v0, p4, v1}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_1
    instance-of p4, p2, Landroid/view/ViewGroup;

    if-eqz p4, :cond_8

    move-object p4, p2

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr p3, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v0, :cond_7

    invoke-virtual {p4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lva;->J()Lva;

    move-result-object v3

    move-object v2, p0

    move v5, p3

    move v6, v9

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lltg;->c(Lva;Landroid/view/View;IILjava/util/Map;)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const-string v3, "Null child %d/%d, parent: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lltg;->c:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_8

    :try_start_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p2

    iget-object p4, p0, Lltg;->c:Ljava/lang/reflect/Method;

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {p4, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lva;->J()Lva;

    move-result-object v3

    const/4 v6, -0x1

    move-object v2, p0

    move v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lltg;->c(Lva;Landroid/view/View;IILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    sget-object p2, Lltg;->a:Ljava/lang/String;

    const-string p3, "Couldn\'t access view group overlay"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_8
    return-void
.end method
