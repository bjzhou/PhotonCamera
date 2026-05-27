.class public final synthetic Lifn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lifn;

.field public static final synthetic b:Lifn;

.field public static final synthetic c:Lifn;

.field public static final synthetic d:Lifn;

.field public static final synthetic e:Lifn;

.field public static final synthetic f:Lifn;

.field public static final synthetic g:Lifn;

.field public static final synthetic h:Lifn;

.field public static final synthetic i:Lifn;

.field public static final synthetic j:Lifn;

.field public static final synthetic k:Lifn;

.field public static final synthetic l:Lifn;

.field public static final synthetic m:Lifn;

.field public static final synthetic n:Lifn;

.field public static final synthetic o:Lifn;

.field public static final synthetic p:Lifn;

.field public static final synthetic q:Lifn;

.field public static final synthetic r:Lifn;

.field public static final synthetic s:Lifn;

.field public static final synthetic t:Lifn;

.field public static final synthetic u:Lifn;


# instance fields
.field private final synthetic v:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lifn;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->u:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->t:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->s:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->r:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->q:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->p:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->o:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->n:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->m:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->l:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->k:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->j:Lifn;

    new-instance v0, Lifn;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->i:Lifn;

    new-instance v0, Lifn;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->h:Lifn;

    new-instance v0, Lifn;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->g:Lifn;

    new-instance v0, Lifn;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->f:Lifn;

    new-instance v0, Lifn;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->e:Lifn;

    new-instance v0, Lifn;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->d:Lifn;

    new-instance v0, Lifn;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->c:Lifn;

    new-instance v0, Lifn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->b:Lifn;

    new-instance v0, Lifn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lifn;-><init>(I)V

    sput-object v0, Lifn;->a:Lifn;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lifn;->v:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lifn;->v:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lifn;->v:I

    const v2, 0x7f070705

    const v4, 0x7f070707

    const v5, 0x7f0801e7

    const v6, 0x7f0801e6

    const/4 v9, -0x1

    const v14, 0x7f060054

    const v15, 0x7f060973

    const/16 v3, 0xff

    const v10, 0x7f060051

    const v8, 0x7f070591

    const v11, 0x7f07058f

    const v13, 0x7f07058e

    const/4 v12, 0x0

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->j(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    sget v3, Lifr;->b:I

    invoke-virtual {v2, v3}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    invoke-virtual {v2, v7}, Lifq;->s(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->l(I)V

    invoke-virtual {v2, v3}, Lifq;->g(I)V

    const v3, 0x7f0801cd

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v2, v7}, Lifq;->o(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v2, v9}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    invoke-virtual {v2, v5}, Lifq;->d(I)V

    invoke-virtual {v1, v5, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->n(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    invoke-virtual {v2, v6}, Lifq;->d(I)V

    invoke-virtual {v1, v6, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->j(I)V

    invoke-virtual {v4, v3}, Lifq;->m(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->n(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->z(I)V

    invoke-virtual {v4, v7}, Lifq;->A(I)V

    invoke-virtual {v4, v7}, Lifq;->u(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->s(I)V

    invoke-virtual {v4, v7}, Lifq;->p(I)V

    invoke-virtual {v4, v7}, Lifq;->q(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->l(I)V

    const v2, 0x7f0801e5

    invoke-virtual {v4, v2}, Lifq;->d(I)V

    invoke-virtual {v1, v2, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v1}, Lifq;->i(I)V

    return-object v4

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->j(I)V

    invoke-virtual {v4, v3}, Lifq;->m(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->n(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->z(I)V

    invoke-virtual {v4, v7}, Lifq;->A(I)V

    invoke-virtual {v4, v7}, Lifq;->u(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->s(I)V

    invoke-virtual {v4, v7}, Lifq;->p(I)V

    invoke-virtual {v4, v7}, Lifq;->q(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->l(I)V

    const/16 v2, 0x3d

    invoke-virtual {v4, v2}, Lifq;->g(I)V

    const v2, 0x7f0801e5

    invoke-virtual {v4, v2}, Lifq;->d(I)V

    invoke-virtual {v1, v2, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v1}, Lifq;->i(I)V

    return-object v4

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v2, v7}, Lifq;->o(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v2, v9}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->z(I)V

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Lifq;->u(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->s(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->l(I)V

    const v4, 0x7f0706dd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->w(I)V

    const v4, 0x7f0706de

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->x(I)V

    const v4, 0x7f0706df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->y(I)V

    invoke-virtual {v2, v3}, Lifq;->v(I)V

    invoke-virtual {v2, v5}, Lifq;->d(I)V

    invoke-virtual {v1, v5, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->n(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    invoke-virtual {v2, v6}, Lifq;->d(I)V

    invoke-virtual {v1, v6, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->j(I)V

    invoke-virtual {v4, v3}, Lifq;->m(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->n(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->z(I)V

    invoke-virtual {v4, v7}, Lifq;->A(I)V

    invoke-virtual {v4, v7}, Lifq;->u(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->s(I)V

    invoke-virtual {v4, v7}, Lifq;->p(I)V

    invoke-virtual {v4, v7}, Lifq;->q(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lifq;->l(I)V

    const v2, 0x7f0801e5

    invoke-virtual {v4, v2}, Lifq;->d(I)V

    invoke-virtual {v1, v2, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v1}, Lifq;->i(I)V

    return-object v4

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    const v4, 0x7f0705af

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v2, v9}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lifq;->b(Z)V

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    const v3, 0x7f070590

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    const v3, 0x7f0705b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    const v3, 0x7f0705b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    return-object v2

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v2, v7}, Lifq;->n(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const v3, 0x7f0801dc

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lifq;->i(I)V

    invoke-virtual {v2, v7}, Lifq;->s(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    return-object v2

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    sget v3, Lifr;->b:I

    invoke-virtual {v2, v3}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lifq;->b(Z)V

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    const v3, 0x7f070590

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    const v3, 0x7f0801cd

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v2, v9}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v2, v7}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lifq;->b(Z)V

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    const v3, 0x7f070590

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    return-object v2

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    sget-boolean v2, Lifr;->a:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0801e8

    invoke-virtual {v1, v2, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v2, v7}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    const v3, 0x7f060500

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lifq;->b(Z)V

    invoke-virtual {v2, v7}, Lifq;->s(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    const v1, 0x7f0801e8

    invoke-virtual {v2, v1}, Lifq;->d(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->j(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    const v3, 0x7f060500

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v2, v7}, Lifq;->r(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    :goto_0
    return-object v2

    :pswitch_c
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    sget-boolean v2, Lifr;->a:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v2, v7}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->j(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    const v4, 0x7f060500

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lifq;->b(Z)V

    invoke-virtual {v2, v7}, Lifq;->s(I)V

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->j(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    const v4, 0x7f060500

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lifq;->b(Z)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->s(I)V

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    :goto_1
    return-object v2

    :pswitch_d
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    const v3, 0x7f060501

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    return-object v2

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    const v3, 0x7f070590

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v2, v7}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v2, v7}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lifq;->b(Z)V

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    const v3, 0x7f070590

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v2, v7}, Lifq;->p(I)V

    invoke-virtual {v2, v7}, Lifq;->q(I)V

    invoke-virtual {v2}, Lifq;->e()V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lifq;->f(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Lifq;->g(I)V

    const v1, 0x7f080235

    invoke-virtual {v2, v1}, Lifq;->d(I)V

    return-object v2

    :pswitch_f
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    const v3, 0x7f070590

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v2, v7}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v2, v7}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lifq;->b(Z)V

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v2, v7}, Lifq;->p(I)V

    invoke-virtual {v2, v7}, Lifq;->q(I)V

    invoke-virtual {v2}, Lifq;->e()V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lifq;->f(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    const v1, 0x7f080235

    invoke-virtual {v2, v1}, Lifq;->d(I)V

    return-object v2

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    const v4, 0x7f070590

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->j(I)V

    invoke-virtual {v1, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v2, v7}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    invoke-virtual {v2}, Lifq;->e()V

    invoke-virtual {v2, v9}, Lifq;->f(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    const v1, 0x7f080235

    invoke-virtual {v2, v1}, Lifq;->d(I)V

    return-object v2

    :pswitch_11
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->s(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->l(I)V

    invoke-virtual {v2, v3}, Lifq;->g(I)V

    const v3, 0x7f08026f

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_12
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->j(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    sget v3, Lifr;->b:I

    invoke-virtual {v2, v3}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v1, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->s(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->l(I)V

    invoke-virtual {v2, v3}, Lifq;->g(I)V

    const v3, 0x7f0801cd

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_13
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->o(I)V

    invoke-virtual {v1, v10, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Lifq;->j(I)V

    invoke-virtual {v2, v7}, Lifq;->m(I)V

    invoke-virtual {v2, v9}, Lifq;->n(I)V

    invoke-virtual {v2, v7}, Lifq;->A(I)V

    invoke-virtual {v2, v7}, Lifq;->z(I)V

    invoke-virtual {v2, v7}, Lifq;->u(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lifq;->b(Z)V

    invoke-virtual {v2, v3}, Lifq;->r(I)V

    const v3, 0x7f070590

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lifn;->v:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
