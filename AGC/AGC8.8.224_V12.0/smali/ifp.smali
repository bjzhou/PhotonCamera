.class public final synthetic Lifp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lifp;

.field public static final synthetic b:Lifp;

.field public static final synthetic c:Lifp;

.field public static final synthetic d:Lifp;

.field public static final synthetic e:Lifp;

.field public static final synthetic f:Lifp;

.field public static final synthetic g:Lifp;

.field public static final synthetic h:Lifp;

.field public static final synthetic i:Lifp;

.field public static final synthetic j:Lifp;

.field public static final synthetic k:Lifp;

.field public static final synthetic l:Lifp;

.field public static final synthetic m:Lifp;

.field public static final synthetic n:Lifp;

.field public static final synthetic o:Lifp;

.field public static final synthetic p:Lifp;

.field public static final synthetic q:Lifp;

.field public static final synthetic r:Lifp;

.field public static final synthetic s:Lifp;

.field public static final synthetic t:Lifp;

.field public static final synthetic u:Lifp;


# instance fields
.field private final synthetic v:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lifp;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->u:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->t:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->s:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->r:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->q:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->p:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->o:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->n:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->m:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->l:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->k:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->j:Lifp;

    new-instance v0, Lifp;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->i:Lifp;

    new-instance v0, Lifp;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->h:Lifp;

    new-instance v0, Lifp;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->g:Lifp;

    new-instance v0, Lifp;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->f:Lifp;

    new-instance v0, Lifp;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->e:Lifp;

    new-instance v0, Lifp;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->d:Lifp;

    new-instance v0, Lifp;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->c:Lifp;

    new-instance v0, Lifp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->b:Lifp;

    new-instance v0, Lifp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lifp;-><init>(I)V

    sput-object v0, Lifp;->a:Lifp;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lifp;->v:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lifp;->v:I

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

    iget v1, v0, Lifp;->v:I

    const v2, 0x7f060789

    const v5, 0x7f070590

    const v7, 0x7f060054

    const/4 v8, 0x1

    const/16 v9, 0x3d

    const v10, 0x7f0801cd

    const/16 v11, 0xff

    const v12, 0x7f060973

    const v13, 0x7f07058f

    const v14, 0x7f060051

    const v15, 0x7f070591

    const v6, 0x7f07058e

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lnfn;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lmwl;

    invoke-virtual {v1}, Lmwl;->f()Lmwn;

    move-result-object v1

    return-object v1

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lmvq;

    invoke-virtual {v1}, Lmvq;->f()Lmvv;

    move-result-object v1

    return-object v1

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Llhz;

    new-instance v2, Lmvq;

    iget-object v3, v1, Llhz;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lmvq;-><init>(I)V

    iget-object v3, v1, Llhz;->a:Ljava/lang/Object;

    sget-object v4, Lmyl;->a:Lmyk;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, v1, Llhz;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    instance-of v3, v1, Lmxi;

    if-eqz v3, :cond_0

    check-cast v1, Lmxi;

    goto :goto_0

    :cond_0
    new-instance v3, Lmxi;

    invoke-direct {v3, v1}, Lmxi;-><init>(Ljava/util/Iterator;)V

    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lmxi;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lmxi;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmym;

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lmxi;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, v1, Lmxi;->b:Z

    if-nez v4, :cond_2

    iget-object v4, v1, Lmxi;->a:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lmxi;->c:Ljava/lang/Object;

    iput-boolean v8, v1, Lmxi;->b:Z

    :cond_2
    iget-object v4, v1, Lmxi;->c:Ljava/lang/Object;

    check-cast v4, Lmym;

    invoke-virtual {v3, v4}, Lmym;->n(Lmym;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v4}, Lmym;->h(Lmym;)Lmym;

    move-result-object v5

    invoke-virtual {v5}, Lmym;->o()Z

    move-result v5

    const-string v6, "Overlapping ranges not permitted but found %s overlapping %s"

    invoke-static {v5, v6, v3, v4}, Lmoz;->m(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lmxi;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmym;

    iget-object v5, v3, Lmym;->b:Lmuc;

    iget-object v6, v4, Lmym;->b:Lmuc;

    invoke-virtual {v5, v6}, Lmuc;->a(Lmuc;)I

    move-result v5

    iget-object v6, v3, Lmym;->c:Lmuc;

    iget-object v7, v4, Lmym;->c:Lmuc;

    invoke-virtual {v6, v7}, Lmuc;->a(Lmuc;)I

    move-result v6

    if-gtz v5, :cond_3

    if-gez v6, :cond_1

    :cond_3
    if-ltz v5, :cond_4

    if-gtz v6, :cond_4

    move-object v3, v4

    goto :goto_1

    :cond_4
    if-gtz v5, :cond_5

    iget-object v5, v3, Lmym;->b:Lmuc;

    goto :goto_2

    :cond_5
    iget-object v5, v4, Lmym;->b:Lmuc;

    :goto_2
    if-ltz v6, :cond_6

    iget-object v3, v3, Lmym;->c:Lmuc;

    goto :goto_3

    :cond_6
    iget-object v3, v4, Lmym;->c:Lmuc;

    :goto_3
    invoke-static {v5, v3}, Lmym;->g(Lmuc;Lmuc;)Lmym;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v3}, Lmvq;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lmvq;->f()Lmvv;

    move-result-object v1

    invoke-virtual {v1}, Lmvv;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v1, Lmwk;->a:Lmwk;

    goto :goto_4

    :cond_9
    move-object v2, v1

    check-cast v2, Lmyu;

    iget v2, v2, Lmyu;->c:I

    if-ne v2, v8, :cond_a

    invoke-static {v1}, Llyh;->U(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmym;

    sget-object v3, Lmym;->a:Lmym;

    invoke-virtual {v2, v3}, Lmym;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v1, Lmwk;->b:Lmwk;

    goto :goto_4

    :cond_a
    new-instance v2, Lmwk;

    invoke-direct {v2, v1}, Lmwk;-><init>(Lmvv;)V

    move-object v1, v2

    :goto_4
    return-object v1

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Float;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v8, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Lioo;

    invoke-interface {v1}, Lioo;->c()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->j(I)V

    invoke-virtual {v2, v11}, Lifq;->m(I)V

    sget v6, Lifr;->b:I

    invoke-virtual {v2, v6}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->z(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    invoke-virtual {v2, v8}, Lifq;->b(Z)V

    invoke-virtual {v2, v9}, Lifq;->r(I)V

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    const v3, 0x7f08026a

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->j(I)V

    invoke-virtual {v2, v11}, Lifq;->m(I)V

    sget v6, Lifr;->b:I

    invoke-virtual {v2, v6}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->z(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    invoke-virtual {v2, v8}, Lifq;->b(Z)V

    invoke-virtual {v2, v9}, Lifq;->r(I)V

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    invoke-virtual {v2, v10}, Lifq;->d(I)V

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v5, v7}, Lifq;->j(I)V

    invoke-virtual {v5, v11}, Lifq;->m(I)V

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->n(I)V

    invoke-virtual {v5, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->z(I)V

    invoke-virtual {v5, v3}, Lifq;->u(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->s(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->p(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->q(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lifq;->l(I)V

    const v1, 0x7f08026b

    invoke-virtual {v5, v1}, Lifq;->d(I)V

    return-object v5

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v5, v7}, Lifq;->j(I)V

    invoke-virtual {v5, v11}, Lifq;->m(I)V

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->n(I)V

    invoke-virtual {v5, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->z(I)V

    invoke-virtual {v5, v3}, Lifq;->u(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->s(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->p(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->q(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lifq;->l(I)V

    const v1, 0x7f0801ce

    invoke-virtual {v5, v1}, Lifq;->d(I)V

    return-object v5

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->j(I)V

    invoke-virtual {v2, v11}, Lifq;->m(I)V

    sget v5, Lifr;->b:I

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->z(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    invoke-virtual {v2, v9}, Lifq;->r(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    invoke-virtual {v2, v9}, Lifq;->g(I)V

    invoke-virtual {v2, v10}, Lifq;->d(I)V

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->j(I)V

    invoke-virtual {v2, v11}, Lifq;->m(I)V

    sget v6, Lifr;->b:I

    invoke-virtual {v2, v6}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v2, v6}, Lifq;->z(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    invoke-virtual {v2, v8}, Lifq;->b(Z)V

    invoke-virtual {v2, v9}, Lifq;->r(I)V

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    invoke-virtual {v2, v10}, Lifq;->d(I)V

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_c
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->o(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->j(I)V

    invoke-virtual {v1, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->z(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    const v3, 0x7f0705b0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    const v3, 0x7f0705b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    const v3, 0x7f0705b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    invoke-virtual {v2, v10}, Lifq;->d(I)V

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_d
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->j(I)V

    invoke-virtual {v2, v11}, Lifq;->m(I)V

    invoke-virtual {v1, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->z(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    invoke-virtual {v2, v10}, Lifq;->d(I)V

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_e
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->j(I)V

    invoke-virtual {v2, v3}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->z(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    invoke-virtual {v2, v9}, Lifq;->g(I)V

    const v3, 0x7f0801dd

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_f
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->j(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    const v3, 0x7f070707

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    const v3, 0x7f0801e7

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lifq;->i(I)V

    return-object v2

    :pswitch_10
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->j(I)V

    invoke-virtual {v2, v11}, Lifq;->m(I)V

    invoke-virtual {v1, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v1, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->z(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    const v3, 0x7f08033f

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lifq;->i(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    return-object v2

    :pswitch_11
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->j(I)V

    invoke-virtual {v2, v11}, Lifq;->m(I)V

    sget v5, Lifr;->c:I

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->A(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    const v3, 0x7f08033e

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lifq;->i(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    return-object v2

    :pswitch_12
    move-object/from16 v1, p1

    check-cast v1, Landroid/content/res/Resources;

    invoke-static {}, Lifr;->a()Lifq;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->o(I)V

    invoke-virtual {v2, v3}, Lifq;->m(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->j(I)V

    invoke-virtual {v1, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->A(I)V

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->z(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    const v3, 0x7f0705b0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    const v3, 0x7f070705

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->p(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->q(I)V

    const v3, 0x7f0705b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->l(I)V

    const v3, 0x7f0801e5

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

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

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->o(I)V

    invoke-virtual {v1, v14, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->j(I)V

    invoke-virtual {v2, v11}, Lifq;->m(I)V

    const v5, 0x7f06007a

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->n(I)V

    invoke-virtual {v2, v3}, Lifq;->z(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lifq;->A(I)V

    invoke-virtual {v2, v3}, Lifq;->u(I)V

    const v3, 0x7f08033f

    invoke-virtual {v2, v3}, Lifq;->d(I)V

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lifq;->i(I)V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->s(I)V

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lifq;->t(I)V

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lifq;->l(I)V

    return-object v2

    nop

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

    iget v0, p0, Lifp;->v:I

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
