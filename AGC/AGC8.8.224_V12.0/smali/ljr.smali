.class public Lljr;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;I)F
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    int-to-float p1, p1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static B(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    return-object p1

    :sswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :sswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :sswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :sswitch_3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :sswitch_4
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :sswitch_5
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0x9 -> :sswitch_3
        0xe -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static C(Landroid/view/View;)Z
    .locals 1

    invoke-static {p0}, Lafc;->c(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static D(Landroid/view/Window;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    new-instance v1, Lxf;

    invoke-direct {v1}, Lxf;-><init>()V

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-interface {v0, v1, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public static E(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-static {p0, p2}, Lacv;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static F(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lacv;->f(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lacv;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static G(Lokx;Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1, p0}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static H(Lokx;Loky;)Lokx;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lokx;->getKey()Loky;

    move-result-object v0

    invoke-static {v0, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static I(Lokx;Loky;)Lola;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lokx;->getKey()Loky;

    move-result-object v0

    invoke-static {v0, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lolb;->a:Lolb;

    :cond_0
    return-object p0
.end method

.method public static J(Lokx;Lola;)Lola;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lljr;->K(Lola;Lola;)Lola;

    move-result-object p0

    return-object p0
.end method

.method public static K(Lola;Lola;)Lola;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lolb;->a:Lolb;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lokz;->a:Lokz;

    invoke-interface {p1, p0, v0}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lola;

    return-object p0
.end method

.method public static L(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static M(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lonm;->f(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method public static N(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static O([Ljava/lang/Object;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void
.end method

.method public static P([Ljava/lang/Object;II)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-static {p0, p1}, Lljr;->O([Ljava/lang/Object;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static Q([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static R()Ljava/util/Set;
    .locals 2

    new-instance v0, Loko;

    new-instance v1, Lokj;

    invoke-direct {v1}, Lokj;-><init>()V

    invoke-direct {v0, v1}, Loko;-><init>(Lokj;)V

    return-object v0
.end method

.method public static S(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static T(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lljr;->al(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static U(Ljava/util/Set;)V
    .locals 0

    check-cast p0, Loko;

    iget-object p0, p0, Loko;->a:Lokj;

    invoke-virtual {p0}, Lokj;->k()V

    return-void
.end method

.method public static V(I)I
    .locals 1

    if-ltz p0, :cond_2

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-lt p0, v0, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static W(Lojd;)Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lojd;->a:Ljava/lang/Object;

    iget-object p0, p0, Lojd;->b:Ljava/lang/Object;

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static X(Ljava/util/Map;Lojd;)Ljava/util/Map;
    .locals 1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lljr;->W(Lojd;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p1, Lojd;->a:Ljava/lang/Object;

    iget-object p1, p1, Lojd;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static Y(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lljr;->V(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {v0, p0}, Lljr;->Z(Ljava/util/Map;Ljava/lang/Iterable;)V

    move-object p0, v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lojd;

    invoke-static {p0}, Lljr;->W(Lojd;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    sget-object p0, Lojy;->a:Lojy;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Z(Ljava/util/Map;Ljava/lang/Iterable;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lojd;

    iget-object v1, v0, Lojd;->a:Ljava/lang/Object;

    iget-object v0, v0, Lojd;->b:Ljava/lang/Object;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static aA([II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-ne p1, v2, :cond_0

    if-ltz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static aB([B[BIII)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static aC([I[IIII)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static aD([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static synthetic aE([B[BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lljr;->aB([B[BIII)V

    return-void
.end method

.method public static synthetic aF([I[II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lljr;->aC([I[IIII)V

    return-void
.end method

.method public static synthetic aG([Ljava/lang/Object;[Ljava/lang/Object;IIII)V
    .locals 2

    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_0

    array-length p4, p0

    :cond_0
    and-int/lit8 v0, p5, 0x4

    and-int/lit8 p5, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    if-eqz p5, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    return-void
.end method

.method public static aH([Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static aI(II)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    sub-int v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    const v0, -0x7ffffff7

    add-int/2addr v0, p0

    if-lez v0, :cond_1

    const p0, 0x7ffffff7

    if-le p1, p0, :cond_1

    const p0, 0x7fffffff

    :cond_1
    return p0
.end method

.method public static aJ(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", size: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aK(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", size: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aL(III)V
    .locals 3

    const-string v0, "fromIndex: "

    if-ltz p0, :cond_1

    if-gt p1, p2, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " > toIndex: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", toIndex: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", size: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;
    .locals 1

    new-instance v0, Lojd;

    invoke-direct {v0, p0, p1}, Lojd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static aN(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Loje;

    invoke-direct {v0, p0}, Loje;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static aO(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Loje;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Loje;

    iget-object p0, p0, Loje;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public static aP(Lolz;)Loja;
    .locals 1

    new-instance v0, Lojh;

    invoke-direct {v0, p0}, Lojh;-><init>(Lolz;)V

    return-object v0
.end method

.method public static aQ(Lolz;)Loja;
    .locals 1

    new-instance v0, Lojg;

    invoke-direct {v0, p0}, Lojg;-><init>(Lolz;)V

    return-object v0
.end method

.method public static aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p0, p1, :cond_0

    sget-object v0, Lolq;->a:Lolp;

    invoke-virtual {v0, p0, p1}, Lolp;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static aS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static aT(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static aa()Ljava/util/List;
    .locals 2

    new-instance v0, Loke;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Loke;-><init>(I)V

    return-object v0
.end method

.method private static ab([Ljava/lang/String;I)F
    .locals 2

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-ltz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-gtz p1, :cond_0

    return p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Motion easing control point value must be between 0 and 1; instead got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ac(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static ad(Ljava/util/List;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static ae(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lojx;->a:Lojx;

    :goto_0
    return-object p0
.end method

.method public static varargs af([Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Loju;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Loju;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static ag()V
    .locals 2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ah(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "List is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ai(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static aj(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lljr;->ak(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :pswitch_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :pswitch_1
    sget-object p0, Lojx;->a:Lojx;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ak(Ljava/util/Collection;)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static al(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lljr;->V(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :pswitch_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lljr;->S(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_2

    :pswitch_1
    sget-object p0, Lojz;->a:Lojz;

    goto :goto_2

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static am(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static an(Ljava/util/Collection;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static ao(Ljava/lang/Iterable;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static ap(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lomk;)V
    .locals 3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    if-ltz p5, :cond_2

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p1, v1, p7}, Lolp;->l(Ljava/lang/Appendable;Ljava/lang/Object;Lomk;)V

    goto :goto_0

    :cond_3
    :goto_2
    if-ltz p5, :cond_4

    if-lez v0, :cond_4

    invoke-interface {p1, p6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_4
    invoke-interface {p1, p4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public static synthetic aq(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lomk;I)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, p5, 0x2

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p3

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p2, p5, 0x10

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const-string p2, "..."

    move-object v8, p2

    goto :goto_2

    :cond_2
    move-object v8, p3

    :goto_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p5, 0x20

    if-eqz v0, :cond_3

    move-object v9, p3

    goto :goto_3

    :cond_3
    move-object v9, p4

    :goto_3
    and-int/lit8 p3, p5, 0x8

    if-eqz p3, :cond_4

    const/4 p3, -0x1

    const/4 v7, -0x1

    goto :goto_4

    :cond_4
    const/4 p3, 0x0

    const/4 v7, 0x0

    :goto_4
    const/4 p3, 0x1

    and-int/lit8 p4, p5, 0x1

    if-ne p3, p4, :cond_5

    const-string p1, ", "

    :cond_5
    move-object v4, p1

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v2 .. v9}, Lljr;->ap(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lomk;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ar(Ljava/util/List;)V
    .locals 1

    check-cast p0, Loke;

    iget-object v0, p0, Loke;->e:Loke;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Loke;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Loke;->d:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static synthetic as(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 8

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const-string p3, ""

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_1

    const-string p2, ", "

    :cond_1
    move-object v2, p2

    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "..."

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lljr;->ap(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lomk;)V

    return-void
.end method

.method public static at([Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static au([Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, p3, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public static av([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p0

    if-gt p2, v0, :cond_0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toIndex ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is greater than size ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static aw([Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static ax([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lljr;->ay([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    sget-object p0, Lojx;->a:Lojx;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ay([Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Loju;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Loju;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static az([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    array-length v0, p0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lljr;->V(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {p0, v1}, Lljr;->aH([Ljava/lang/Object;Ljava/util/Collection;)V

    return-object v1
.end method

.method public static synthetic b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static c(Landroid/os/health/HealthStats;I)J
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasMeasurement(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getMeasurement(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static d(Landroid/os/health/HealthStats;I)Ljava/util/List;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasTimers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Llhx;->a:Llhx;

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getTimers(I)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Llhv;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/os/health/HealthStats;I)Ljava/util/Map;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasStats(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getStats(I)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Loyf;
    .locals 3

    sget-object v0, Loyf;->d:Loyf;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyf;

    iget v2, v1, Loyf;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Loyf;->a:I

    iput-object p0, v1, Loyf;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Loyf;

    return-object p0
.end method

.method public static g(Landroid/os/health/HealthStats;I)Loyk;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasTimer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getTimer(I)Landroid/os/health/TimerStat;

    move-result-object p0

    invoke-static {v0, p0}, Lljr;->i(Ljava/lang/String;Landroid/os/health/TimerStat;)Loyk;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static h(Loyk;Loyk;)Loyk;
    .locals 5

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Loyk;->b:I

    iget v1, p1, Loyk;->b:I

    sub-int/2addr v0, v1

    iget-wide v1, p0, Loyk;->c:J

    iget-wide v3, p1, Loyk;->c:J

    sub-long/2addr v1, v3

    if-nez v0, :cond_2

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    sget-object p1, Loyk;->e:Loyk;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iget v3, p0, Loyk;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget-object p0, p0, Loyk;->d:Loyf;

    if-nez p0, :cond_3

    sget-object p0, Loyf;->d:Loyf;

    :cond_3
    iget-object v3, p1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_4
    iget-object v3, p1, Lnwn;->b:Lnws;

    check-cast v3, Loyk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v3, Loyk;->d:Loyf;

    iget p0, v3, Loyk;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v3, Loyk;->a:I

    :cond_5
    iget-object p0, p1, Lnwn;->b:Lnws;

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_6
    iget-object p0, p1, Lnwn;->b:Lnws;

    move-object v3, p0

    check-cast v3, Loyk;

    iget v4, v3, Loyk;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Loyk;->a:I

    iput v0, v3, Loyk;->b:I

    invoke-virtual {p0}, Lnws;->ac()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_7
    iget-object p0, p1, Lnwn;->b:Lnws;

    check-cast p0, Loyk;

    iget v0, p0, Loyk;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Loyk;->a:I

    iput-wide v1, p0, Loyk;->c:J

    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Loyk;

    return-object p0

    :cond_8
    :goto_1
    return-object p0
.end method

.method public static i(Ljava/lang/String;Landroid/os/health/TimerStat;)Loyk;
    .locals 5

    sget-object v0, Loyk;->e:Loyk;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/health/TimerStat;->getCount()I

    move-result v1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Loyk;

    iget v3, v2, Loyk;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Loyk;->a:I

    iput v1, v2, Loyk;->b:I

    invoke-virtual {p1}, Landroid/os/health/TimerStat;->getTime()J

    move-result-wide v1

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object p1, v0, Lnwn;->b:Lnws;

    move-object v3, p1

    check-cast v3, Loyk;

    iget v4, v3, Loyk;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Loyk;->a:I

    iput-wide v1, v3, Loyk;->c:J

    iget v1, v3, Loyk;->b:I

    if-gez v1, :cond_3

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Loyk;

    iget v1, p1, Loyk;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Loyk;->a:I

    const/4 v1, 0x0

    iput v1, p1, Loyk;->b:I

    :cond_3
    if-eqz p0, :cond_5

    invoke-static {p0}, Lljr;->f(Ljava/lang/String;)Loyf;

    move-result-object p0

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Loyk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Loyk;->d:Loyf;

    iget p0, p1, Loyk;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Loyk;->a:I

    :cond_5
    iget-object p0, v0, Lnwn;->b:Lnws;

    check-cast p0, Loyk;

    iget p1, p0, Loyk;->b:I

    if-nez p1, :cond_6

    iget-wide p0, p0, Loyk;->c:J

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Loyk;

    return-object p0
.end method

.method public static j(Loyl;Loyl;)Loyl;
    .locals 11

    if-eqz p0, :cond_a5

    if-nez p1, :cond_0

    goto/16 :goto_20

    :cond_0
    sget-object v0, Loyl;->an:Loyl;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget v1, p0, Loyl;->a:I

    and-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    iget-wide v4, p0, Loyl;->c:J

    iget-wide v6, p1, Loyl;->c:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v6, v1, Loyl;->a:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v1, Loyl;->a:I

    iput-wide v4, v1, Loyl;->c:J

    :cond_2
    iget v1, p0, Loyl;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    iget-wide v4, p0, Loyl;->d:J

    iget-wide v6, p1, Loyl;->d:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v6, v1, Loyl;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v1, Loyl;->a:I

    iput-wide v4, v1, Loyl;->d:J

    :cond_4
    iget v1, p0, Loyl;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    iget-wide v4, p0, Loyl;->e:J

    iget-wide v6, p1, Loyl;->e:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v6, v1, Loyl;->a:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v1, Loyl;->a:I

    iput-wide v4, v1, Loyl;->e:J

    :cond_6
    iget v1, p0, Loyl;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    iget-wide v4, p0, Loyl;->f:J

    iget-wide v6, p1, Loyl;->f:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_8

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v6, v1, Loyl;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v1, Loyl;->a:I

    iput-wide v4, v1, Loyl;->f:J

    :cond_8
    sget-object v1, Llhx;->a:Llhx;

    iget-object v4, p0, Loyl;->g:Lnxa;

    iget-object v5, p1, Loyl;->g:Lnxa;

    invoke-virtual {v1, v4, v5}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->ai(Ljava/lang/Iterable;)V

    sget-object v1, Llhx;->a:Llhx;

    iget-object v4, p0, Loyl;->h:Lnxa;

    iget-object v5, p1, Loyl;->h:Lnxa;

    invoke-virtual {v1, v4, v5}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->aj(Ljava/lang/Iterable;)V

    sget-object v1, Llhx;->a:Llhx;

    iget-object v4, p0, Loyl;->i:Lnxa;

    iget-object v5, p1, Loyl;->i:Lnxa;

    invoke-virtual {v1, v4, v5}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->ak(Ljava/lang/Iterable;)V

    sget-object v1, Llhx;->a:Llhx;

    iget-object v4, p0, Loyl;->j:Lnxa;

    iget-object v5, p1, Loyl;->j:Lnxa;

    invoke-virtual {v1, v4, v5}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->ah(Ljava/lang/Iterable;)V

    sget-object v1, Llhx;->a:Llhx;

    iget-object v4, p0, Loyl;->k:Lnxa;

    iget-object v5, p1, Loyl;->k:Lnxa;

    invoke-virtual {v1, v4, v5}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->ag(Ljava/lang/Iterable;)V

    sget-object v1, Llhx;->a:Llhx;

    iget-object v4, p0, Loyl;->l:Lnxa;

    iget-object v5, p1, Loyl;->l:Lnxa;

    invoke-virtual {v1, v4, v5}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->ac(Ljava/lang/Iterable;)V

    iget v1, p0, Loyl;->a:I

    and-int/lit8 v1, v1, 0x10

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Loyl;->m:Loyk;

    if-nez v1, :cond_a

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_0

    :cond_9
    move-object v1, v4

    :cond_a
    :goto_0
    iget v5, p1, Loyl;->a:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_b

    iget-object v5, p1, Loyl;->m:Loyk;

    if-nez v5, :cond_c

    sget-object v5, Loyk;->e:Loyk;

    goto :goto_1

    :cond_b
    move-object v5, v4

    :cond_c
    :goto_1
    invoke-static {v1, v5}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v5, v0, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_d
    iget-object v5, v0, Lnwn;->b:Lnws;

    check-cast v5, Loyl;

    iput-object v1, v5, Loyl;->m:Loyk;

    iget v1, v5, Loyl;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v5, Loyl;->a:I

    :cond_e
    sget-object v1, Llhx;->a:Llhx;

    iget-object v5, p0, Loyl;->n:Lnxa;

    iget-object v6, p1, Loyl;->n:Lnxa;

    invoke-virtual {v1, v5, v6}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->ad(Ljava/lang/Iterable;)V

    sget-object v1, Llhu;->a:Llhu;

    iget-object v5, p0, Loyl;->p:Lnxa;

    iget-object v6, p1, Loyl;->p:Lnxa;

    invoke-virtual {v1, v5, v6}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->af(Ljava/lang/Iterable;)V

    sget-object v1, Llht;->a:Llht;

    iget-object v5, p0, Loyl;->q:Lnxa;

    iget-object v6, p1, Loyl;->q:Lnxa;

    invoke-virtual {v1, v5, v6}, Llhv;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnwn;->ae(Ljava/lang/Iterable;)V

    iget v1, p0, Loyl;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_10

    iget-wide v5, p0, Loyl;->r:J

    iget-wide v7, p1, Loyl;->r:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_10

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_f
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v7, v1, Loyl;->a:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v1, Loyl;->a:I

    iput-wide v5, v1, Loyl;->r:J

    :cond_10
    iget v1, p0, Loyl;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_12

    iget-wide v5, p0, Loyl;->s:J

    iget-wide v7, p1, Loyl;->s:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_12

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_11
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v7, v1, Loyl;->a:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v1, Loyl;->a:I

    iput-wide v5, v1, Loyl;->s:J

    :cond_12
    iget v1, p0, Loyl;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_14

    iget-wide v5, p0, Loyl;->t:J

    iget-wide v7, p1, Loyl;->t:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_14

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_13
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v7, v1, Loyl;->a:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v1, Loyl;->a:I

    iput-wide v5, v1, Loyl;->t:J

    :cond_14
    iget v1, p0, Loyl;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_16

    iget-wide v5, p0, Loyl;->u:J

    iget-wide v7, p1, Loyl;->u:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_16

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_15
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v7, v1, Loyl;->a:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v1, Loyl;->a:I

    iput-wide v5, v1, Loyl;->u:J

    :cond_16
    iget v1, p0, Loyl;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_18

    iget-wide v5, p0, Loyl;->v:J

    iget-wide v7, p1, Loyl;->v:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_18

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_17
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v7, v1, Loyl;->a:I

    or-int/lit16 v7, v7, 0x200

    iput v7, v1, Loyl;->a:I

    iput-wide v5, v1, Loyl;->v:J

    :cond_18
    iget v1, p0, Loyl;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1a

    iget-wide v5, p0, Loyl;->w:J

    iget-wide v7, p1, Loyl;->w:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_19
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v7, v1, Loyl;->a:I

    or-int/lit16 v7, v7, 0x400

    iput v7, v1, Loyl;->a:I

    iput-wide v5, v1, Loyl;->w:J

    :cond_1a
    iget v1, p0, Loyl;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1c

    iget-wide v5, p0, Loyl;->x:J

    iget-wide v7, p1, Loyl;->x:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1b
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v5, v6}, Loyl;->k(J)V

    :cond_1c
    iget v1, p0, Loyl;->a:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1e

    iget-wide v5, p0, Loyl;->y:J

    iget-wide v7, p1, Loyl;->y:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1d
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v5, v6}, Loyl;->l(J)V

    :cond_1e
    iget v1, p0, Loyl;->a:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_20

    iget-wide v5, p0, Loyl;->z:J

    iget-wide v7, p1, Loyl;->z:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_20

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1f
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v5, v6}, Loyl;->m(J)V

    :cond_20
    iget v1, p0, Loyl;->a:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_22

    iget-wide v5, p0, Loyl;->A:J

    iget-wide v7, p1, Loyl;->A:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_22

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_21
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v5, v6}, Loyl;->o(J)V

    :cond_22
    iget v1, p0, Loyl;->a:I

    const v5, 0x8000

    and-int/2addr v1, v5

    if-eqz v1, :cond_24

    iget-wide v6, p0, Loyl;->B:J

    iget-wide v8, p1, Loyl;->B:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_24

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_23
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v6, v7}, Loyl;->p(J)V

    :cond_24
    iget v1, p0, Loyl;->a:I

    const/high16 v6, 0x10000

    and-int/2addr v1, v6

    if-eqz v1, :cond_26

    iget-wide v7, p0, Loyl;->C:J

    iget-wide v9, p1, Loyl;->C:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_26

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_25
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->r(J)V

    :cond_26
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x20000

    and-int/2addr v1, v7

    if-eqz v1, :cond_28

    iget-wide v7, p0, Loyl;->D:J

    iget-wide v9, p1, Loyl;->D:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_28

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_27
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->s(J)V

    :cond_28
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x40000

    and-int/2addr v1, v7

    if-eqz v1, :cond_2a

    iget-wide v7, p0, Loyl;->E:J

    iget-wide v9, p1, Loyl;->E:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_29
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->t(J)V

    :cond_2a
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x80000

    and-int/2addr v1, v7

    if-eqz v1, :cond_2b

    iget-object v1, p0, Loyl;->F:Loyk;

    if-nez v1, :cond_2c

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_2

    :cond_2b
    move-object v1, v4

    :cond_2c
    :goto_2
    iget v8, p1, Loyl;->a:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_2d

    iget-object v7, p1, Loyl;->F:Loyk;

    if-nez v7, :cond_2e

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_3

    :cond_2d
    move-object v7, v4

    :cond_2e
    :goto_3
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2f
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->u(Loyk;)V

    :cond_30
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x100000

    and-int/2addr v1, v7

    if-eqz v1, :cond_32

    iget-wide v7, p0, Loyl;->G:J

    iget-wide v9, p1, Loyl;->G:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_32

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_31
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->v(J)V

    :cond_32
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x200000

    and-int/2addr v1, v7

    if-eqz v1, :cond_33

    iget-object v1, p0, Loyl;->H:Loyk;

    if-nez v1, :cond_34

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_4

    :cond_33
    move-object v1, v4

    :cond_34
    :goto_4
    iget v8, p1, Loyl;->a:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_35

    iget-object v7, p1, Loyl;->H:Loyk;

    if-nez v7, :cond_36

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_5

    :cond_35
    move-object v7, v4

    :cond_36
    :goto_5
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_37

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_37
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->w(Loyk;)V

    :cond_38
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x400000

    and-int/2addr v1, v7

    if-eqz v1, :cond_39

    iget-object v1, p0, Loyl;->I:Loyk;

    if-nez v1, :cond_3a

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_6

    :cond_39
    move-object v1, v4

    :cond_3a
    :goto_6
    iget v8, p1, Loyl;->a:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_3b

    iget-object v7, p1, Loyl;->I:Loyk;

    if-nez v7, :cond_3c

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_7

    :cond_3b
    move-object v7, v4

    :cond_3c
    :goto_7
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3d
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->x(Loyk;)V

    :cond_3e
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x800000

    and-int/2addr v1, v7

    if-eqz v1, :cond_3f

    iget-object v1, p0, Loyl;->J:Loyk;

    if-nez v1, :cond_40

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_8

    :cond_3f
    move-object v1, v4

    :cond_40
    :goto_8
    iget v7, p1, Loyl;->a:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-eqz v7, :cond_41

    iget-object v7, p1, Loyl;->J:Loyk;

    if-nez v7, :cond_42

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_9

    :cond_41
    move-object v7, v4

    :cond_42
    :goto_9
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_43

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_43
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->y(Loyk;)V

    :cond_44
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x1000000

    and-int/2addr v1, v7

    if-eqz v1, :cond_45

    iget-object v1, p0, Loyl;->K:Loyk;

    if-nez v1, :cond_46

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_a

    :cond_45
    move-object v1, v4

    :cond_46
    :goto_a
    iget v7, p1, Loyl;->a:I

    const/high16 v8, 0x1000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_47

    iget-object v7, p1, Loyl;->K:Loyk;

    if-nez v7, :cond_48

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_b

    :cond_47
    move-object v7, v4

    :cond_48
    :goto_b
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_49

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_49
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->z(Loyk;)V

    :cond_4a
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x2000000

    and-int/2addr v1, v7

    if-eqz v1, :cond_4b

    iget-object v1, p0, Loyl;->L:Loyk;

    if-nez v1, :cond_4c

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_c

    :cond_4b
    move-object v1, v4

    :cond_4c
    :goto_c
    iget v7, p1, Loyl;->a:I

    const/high16 v8, 0x2000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4d

    iget-object v7, p1, Loyl;->L:Loyk;

    if-nez v7, :cond_4e

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_d

    :cond_4d
    move-object v7, v4

    :cond_4e
    :goto_d
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_4f

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4f
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->A(Loyk;)V

    :cond_50
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x4000000

    and-int/2addr v1, v7

    if-eqz v1, :cond_51

    iget-object v1, p0, Loyl;->M:Loyk;

    if-nez v1, :cond_52

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_e

    :cond_51
    move-object v1, v4

    :cond_52
    :goto_e
    iget v7, p1, Loyl;->a:I

    const/high16 v8, 0x4000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_53

    iget-object v7, p1, Loyl;->M:Loyk;

    if-nez v7, :cond_54

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_f

    :cond_53
    move-object v7, v4

    :cond_54
    :goto_f
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_55

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_55
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->B(Loyk;)V

    :cond_56
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x8000000

    and-int/2addr v1, v7

    if-eqz v1, :cond_57

    iget-object v1, p0, Loyl;->N:Loyk;

    if-nez v1, :cond_58

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_10

    :cond_57
    move-object v1, v4

    :cond_58
    :goto_10
    iget v7, p1, Loyl;->a:I

    const/high16 v8, 0x8000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_59

    iget-object v7, p1, Loyl;->N:Loyk;

    if-nez v7, :cond_5a

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_11

    :cond_59
    move-object v7, v4

    :cond_5a
    :goto_11
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_5b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5b
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->C(Loyk;)V

    :cond_5c
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x10000000

    and-int/2addr v1, v7

    if-eqz v1, :cond_5d

    iget-object v1, p0, Loyl;->O:Loyk;

    if-nez v1, :cond_5e

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_12

    :cond_5d
    move-object v1, v4

    :cond_5e
    :goto_12
    iget v7, p1, Loyl;->a:I

    const/high16 v8, 0x10000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_5f

    iget-object v7, p1, Loyl;->O:Loyk;

    if-nez v7, :cond_60

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_13

    :cond_5f
    move-object v7, v4

    :cond_60
    :goto_13
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_62

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_61

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_61
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->D(Loyk;)V

    :cond_62
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x20000000

    and-int/2addr v1, v7

    if-eqz v1, :cond_63

    iget-object v1, p0, Loyl;->P:Loyk;

    if-nez v1, :cond_64

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_14

    :cond_63
    move-object v1, v4

    :cond_64
    :goto_14
    iget v7, p1, Loyl;->a:I

    const/high16 v8, 0x20000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_65

    iget-object v7, p1, Loyl;->P:Loyk;

    if-nez v7, :cond_66

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_15

    :cond_65
    move-object v7, v4

    :cond_66
    :goto_15
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_68

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_67

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_67
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->E(Loyk;)V

    :cond_68
    iget v1, p0, Loyl;->a:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v1, v7

    if-eqz v1, :cond_69

    iget-object v1, p0, Loyl;->Q:Loyk;

    if-nez v1, :cond_6a

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_16

    :cond_69
    move-object v1, v4

    :cond_6a
    :goto_16
    iget v7, p1, Loyl;->a:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_6b

    iget-object v7, p1, Loyl;->Q:Loyk;

    if-nez v7, :cond_6c

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_17

    :cond_6b
    move-object v7, v4

    :cond_6c
    :goto_17
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_6d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6d
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->F(Loyk;)V

    :cond_6e
    iget v1, p0, Loyl;->a:I

    const/high16 v7, -0x80000000

    and-int/2addr v1, v7

    if-eqz v1, :cond_6f

    iget-object v1, p0, Loyl;->R:Loyk;

    if-nez v1, :cond_70

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_18

    :cond_6f
    move-object v1, v4

    :cond_70
    :goto_18
    iget v7, p1, Loyl;->a:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_71

    iget-object v7, p1, Loyl;->R:Loyk;

    if-nez v7, :cond_72

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_19

    :cond_71
    move-object v7, v4

    :cond_72
    :goto_19
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_74

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_73

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_73
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->ag(Loyk;)V

    :cond_74
    iget v1, p0, Loyl;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_75

    iget-object v1, p0, Loyl;->S:Loyk;

    if-nez v1, :cond_76

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_1a

    :cond_75
    move-object v1, v4

    :cond_76
    :goto_1a
    iget v7, p1, Loyl;->b:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_77

    iget-object v7, p1, Loyl;->S:Loyk;

    if-nez v7, :cond_78

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_1b

    :cond_77
    move-object v7, v4

    :cond_78
    :goto_1b
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_7a

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_79

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_79
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->ah(Loyk;)V

    :cond_7a
    iget v1, p0, Loyl;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7b

    iget-object v1, p0, Loyl;->T:Loyk;

    if-nez v1, :cond_7c

    sget-object v1, Loyk;->e:Loyk;

    goto :goto_1c

    :cond_7b
    move-object v1, v4

    :cond_7c
    :goto_1c
    iget v7, p1, Loyl;->b:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7d

    iget-object v7, p1, Loyl;->T:Loyk;

    if-nez v7, :cond_7e

    sget-object v7, Loyk;->e:Loyk;

    goto :goto_1d

    :cond_7d
    move-object v7, v4

    :cond_7e
    :goto_1d
    invoke-static {v1, v7}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_80

    iget-object v7, v0, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7f
    iget-object v7, v0, Lnwn;->b:Lnws;

    check-cast v7, Loyl;

    invoke-virtual {v7, v1}, Loyl;->ai(Loyk;)V

    :cond_80
    iget v1, p0, Loyl;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_82

    iget-wide v7, p0, Loyl;->U:J

    iget-wide v9, p1, Loyl;->U:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_82

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_81

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_81
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->aj(J)V

    :cond_82
    iget v1, p0, Loyl;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_84

    iget-wide v7, p0, Loyl;->V:J

    iget-wide v9, p1, Loyl;->V:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_84

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_83

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_83
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->ak(J)V

    :cond_84
    iget v1, p0, Loyl;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_86

    iget-wide v7, p0, Loyl;->W:J

    iget-wide v9, p1, Loyl;->W:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_86

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_85

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_85
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->al(J)V

    :cond_86
    iget v1, p0, Loyl;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_88

    iget-wide v7, p0, Loyl;->X:J

    iget-wide v9, p1, Loyl;->X:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_88

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_87

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_87
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->am(J)V

    :cond_88
    iget v1, p0, Loyl;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8a

    iget-wide v7, p0, Loyl;->Y:J

    iget-wide v9, p1, Loyl;->Y:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_8a

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_89

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_89
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->an(J)V

    :cond_8a
    iget v1, p0, Loyl;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8c

    iget-wide v7, p0, Loyl;->Z:J

    iget-wide v9, p1, Loyl;->Z:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_8c

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8b
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->ao(J)V

    :cond_8c
    iget v1, p0, Loyl;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8e

    iget-wide v7, p0, Loyl;->aa:J

    iget-wide v9, p1, Loyl;->aa:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_8e

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8d
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->ap(J)V

    :cond_8e
    iget v1, p0, Loyl;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_90

    iget-wide v7, p0, Loyl;->ab:J

    iget-wide v9, p1, Loyl;->ab:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_90

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8f
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->aq(J)V

    :cond_90
    iget v1, p0, Loyl;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_92

    iget-wide v7, p0, Loyl;->ac:J

    iget-wide v9, p1, Loyl;->ac:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_92

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_91

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_91
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->ar(J)V

    :cond_92
    iget v1, p0, Loyl;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_94

    iget-wide v7, p0, Loyl;->ad:J

    iget-wide v9, p1, Loyl;->ad:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_94

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_93

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_93
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    invoke-virtual {v1, v7, v8}, Loyl;->as(J)V

    :cond_94
    iget v1, p0, Loyl;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_96

    iget-wide v7, p0, Loyl;->ae:J

    iget-wide v9, p1, Loyl;->ae:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_96

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_95

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_95
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v9, v1, Loyl;->b:I

    or-int/lit16 v9, v9, 0x1000

    iput v9, v1, Loyl;->b:I

    iput-wide v7, v1, Loyl;->ae:J

    :cond_96
    iget v1, p0, Loyl;->b:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_98

    iget-wide v7, p0, Loyl;->af:J

    iget-wide v9, p1, Loyl;->af:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_98

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_97

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_97
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v9, v1, Loyl;->b:I

    or-int/lit16 v9, v9, 0x2000

    iput v9, v1, Loyl;->b:I

    iput-wide v7, v1, Loyl;->af:J

    :cond_98
    iget v1, p0, Loyl;->b:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_9a

    iget-wide v7, p0, Loyl;->ag:J

    iget-wide v9, p1, Loyl;->ag:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_9a

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_99
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v9, v1, Loyl;->b:I

    or-int/lit16 v9, v9, 0x4000

    iput v9, v1, Loyl;->b:I

    iput-wide v7, v1, Loyl;->ag:J

    :cond_9a
    iget v1, p0, Loyl;->b:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_9c

    iget-wide v7, p0, Loyl;->ah:J

    iget-wide v9, p1, Loyl;->ah:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_9c

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_9b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_9b
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyl;

    iget v9, v1, Loyl;->b:I

    or-int/2addr v5, v9

    iput v5, v1, Loyl;->b:I

    iput-wide v7, v1, Loyl;->ah:J

    :cond_9c
    iget v1, p0, Loyl;->b:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_9d

    iget-wide v5, p0, Loyl;->ai:J

    iget-wide v7, p1, Loyl;->ai:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_9d

    invoke-virtual {v0, v5, v6}, Lnwn;->al(J)V

    :cond_9d
    invoke-virtual {p0}, Loyl;->at()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-virtual {p0}, Loyl;->au()Loyk;

    move-result-object v1

    goto :goto_1e

    :cond_9e
    move-object v1, v4

    :goto_1e
    invoke-virtual {p1}, Loyl;->at()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {p1}, Loyl;->au()Loyk;

    move-result-object v5

    goto :goto_1f

    :cond_9f
    move-object v5, v4

    :goto_1f
    invoke-static {v1, v5}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object v1

    if-eqz v1, :cond_a0

    invoke-virtual {v0, v1}, Lnwn;->ao(Loyk;)V

    :cond_a0
    invoke-virtual {p0}, Loyl;->av()Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-wide v5, p0, Loyl;->ak:J

    iget-wide v7, p1, Loyl;->ak:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_a1

    invoke-virtual {v0, v5, v6}, Lnwn;->as(J)V

    :cond_a1
    invoke-virtual {p0}, Loyl;->aw()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-wide v5, p0, Loyl;->al:J

    iget-wide v7, p1, Loyl;->al:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_a2

    invoke-virtual {v0, v5, v6}, Lnwn;->ar(J)V

    :cond_a2
    invoke-virtual {p0}, Loyl;->ax()Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-wide v5, p0, Loyl;->am:J

    iget-wide p0, p1, Loyl;->am:J

    sub-long/2addr v5, p0

    cmp-long p0, v5, v2

    if-eqz p0, :cond_a3

    invoke-virtual {v0, v5, v6}, Lnwn;->am(J)V

    :cond_a3
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Loyl;

    invoke-static {p0}, Lljr;->n(Loyl;)Z

    move-result p1

    if-eqz p1, :cond_a4

    return-object v4

    :cond_a4
    return-object p0

    :cond_a5
    :goto_20
    return-object p0
.end method

.method public static k(Loyg;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    iget-object v1, p0, Loyg;->b:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object p0, p0, Loyg;->c:Lnxa;

    invoke-interface {p0}, Lnxa;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_0
    return v0
.end method

.method public static l(Loyi;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    iget-wide v1, p0, Loyi;->b:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyi;->c:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyi;->d:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyi;->e:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyi;->f:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyi;->g:J

    cmp-long p0, v1, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static m(Loyj;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    iget v1, p0, Loyj;->b:I

    int-to-long v1, v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    iget p0, p0, Loyj;->c:I

    int-to-long v1, p0

    cmp-long p0, v1, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method static n(Loyl;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    iget-wide v1, p0, Loyl;->c:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->d:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->e:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->f:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-object v1, p0, Loyl;->g:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loyl;->h:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loyl;->i:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loyl;->j:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loyl;->k:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loyl;->l:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loyl;->n:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loyl;->o:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loyl;->p:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loyl;->q:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Loyl;->r:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->s:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->t:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->u:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->v:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->w:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->x:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->y:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->z:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->A:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->B:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->C:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->D:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->E:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->G:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->U:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->V:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->W:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->X:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->Y:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->Z:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->aa:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->ab:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->ac:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->ad:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->ae:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->af:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->ag:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->ah:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->ai:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->ak:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->al:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    iget-wide v1, p0, Loyl;->am:J

    cmp-long p0, v1, v3

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v5

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_0
    return v0
.end method

.method public static o(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p([F)Ljava/nio/FloatBuffer;
    .locals 2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static q(FF)[F
    .locals 12

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v6, v3

    const/4 v7, 0x0

    cmpg-float v8, v6, v7

    if-gtz v8, :cond_3

    if-lez v3, :cond_0

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v8, -0x3

    aget v9, v0, v9

    aput v9, v0, v4

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v9, v4, -0x3

    aget v9, v0, v9

    aput v9, v0, v8

    add-int/lit8 v8, v4, 0x1

    aput p0, v0, v4

    add-int/lit8 v4, v8, 0x1

    aput v5, v0, v8

    :cond_0
    const/high16 v8, -0x40800000    # -1.0f

    add-float/2addr v8, p1

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    move v6, p1

    goto :goto_1

    :cond_1
    add-float v6, v5, v8

    :goto_1
    move v9, p0

    const/4 v7, 0x0

    :goto_2
    const/4 v10, 0x1

    if-gt v7, v10, :cond_2

    sub-float v10, v2, p0

    add-int/lit8 v11, v4, 0x1

    aput v9, v0, v4

    add-int/lit8 v4, v11, 0x1

    aput v5, v0, v11

    add-int/lit8 v11, v4, 0x1

    aput v9, v0, v4

    add-int/lit8 v4, v11, 0x1

    aput v6, v0, v11

    add-float/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-float/2addr v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static r(Landroid/content/Context;Landroid/content/res/TypedArray;II)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    return p0
.end method

.method public static s(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Labx;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lfs;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/content/Context;II)I
    .locals 1

    invoke-static {p0, p1}, Lljr;->v(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method

.method public static v(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;
    .locals 3

    invoke-static {p0, p1}, Lljr;->v(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static x(Landroid/content/Context;IZ)Z
    .locals 1

    invoke-static {p0, p1}, Lljr;->v(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p1, p0, Landroid/util/TypedValue;->type:I

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    iget p0, p0, Landroid/util/TypedValue;->data:I

    if-nez p0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return p2
.end method

.method public static y(Landroid/content/ContentResolver;)F
    .locals 2

    const-string v0, "animator_duration_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static z(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cubic-bezier"

    invoke-static {p1, v1}, Lljr;->aT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "path"

    if-nez v3, :cond_2

    invoke-static {p1, v4}, Lljr;->aT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {p1, v1}, Lljr;->aT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p1, v1}, Lljr;->aS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lljr;->ab([Ljava/lang/String;I)F

    move-result p1

    invoke-static {p0, v2}, Lljr;->ab([Ljava/lang/String;I)F

    move-result v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lljr;->ab([Ljava/lang/String;I)F

    move-result v1

    invoke-static {p0, p2}, Lljr;->ab([Ljava/lang/String;I)F

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lahd;->c(FFFF)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1, v4}, Lljr;->aT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p1, v4}, Lljr;->aS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Laau;->e(Ljava/lang/String;)[Lacs;

    move-result-object p2

    if-eqz p2, :cond_5

    :try_start_0
    invoke-static {p2, p1}, Lacs;->a([Lacs;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Error in parsing "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lahd;->a(Landroid/graphics/Path;)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid motion easing type: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
