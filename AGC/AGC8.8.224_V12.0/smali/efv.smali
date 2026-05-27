.class public final synthetic Lefv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lefv;

.field public static final synthetic b:Lefv;

.field public static final synthetic c:Lefv;

.field public static final synthetic d:Lefv;

.field public static final synthetic e:Lefv;

.field public static final synthetic f:Lefv;

.field public static final synthetic g:Lefv;

.field public static final synthetic h:Lefv;

.field public static final synthetic i:Lefv;

.field public static final synthetic j:Lefv;

.field public static final synthetic k:Lefv;

.field public static final synthetic l:Lefv;

.field public static final synthetic m:Lefv;

.field public static final synthetic n:Lefv;

.field public static final synthetic o:Lefv;

.field public static final synthetic p:Lefv;

.field public static final synthetic q:Lefv;

.field public static final synthetic r:Lefv;

.field public static final synthetic s:Lefv;

.field public static final synthetic t:Lefv;

.field public static final synthetic u:Lefv;


# instance fields
.field private final synthetic v:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lefv;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->u:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->t:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->s:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->r:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->q:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->p:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->o:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->n:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->m:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->l:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->k:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->j:Lefv;

    new-instance v0, Lefv;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->i:Lefv;

    new-instance v0, Lefv;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->h:Lefv;

    new-instance v0, Lefv;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->g:Lefv;

    new-instance v0, Lefv;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->f:Lefv;

    new-instance v0, Lefv;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->e:Lefv;

    new-instance v0, Lefv;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->d:Lefv;

    new-instance v0, Lefv;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->c:Lefv;

    new-instance v0, Lefv;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->b:Lefv;

    new-instance v0, Lefv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lefv;-><init>(I)V

    sput-object v0, Lefv;->a:Lefv;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lefv;->v:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lefv;->v:I

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
    .locals 8

    iget v0, p0, Lefv;->v:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lhgx;

    sget v0, Lhfb;->f:I

    iget-object p1, p1, Lhgx;->a:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p1

    :pswitch_0
    check-cast p1, Lkfj;

    invoke-interface {p1}, Lkfj;->c()Lkll;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lkfj;

    invoke-interface {p1}, Lkfj;->c()Lkll;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lkeb;

    invoke-interface {p1}, Lkeb;->j()Lkgq;

    move-result-object p1

    iget-object p1, p1, Lkgq;->c:Lmwn;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lefv;->q:Lefv;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmvv;

    return-object p1

    :pswitch_3
    check-cast p1, Lkfj;

    invoke-interface {p1}, Lkfj;->c()Lkll;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lgxb;

    iget-object p1, p1, Lgxb;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_5
    check-cast p1, Lkfj;

    invoke-interface {p1}, Lkfj;->c()Lkll;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Lgxb;

    iget-object p1, p1, Lgxb;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Ldhp;->d:Ldhp;

    invoke-virtual {v0}, Ldhp;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Lcik;

    new-instance v0, Lcdw;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Lcdw;-><init>(Lcik;I)V

    return-object v0

    :pswitch_9
    check-cast p1, Lnou;

    invoke-interface {p1}, Lnou;->isDone()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Lcik;

    invoke-interface {p1}, Lcik;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Lkll;

    iget-object p1, p1, Lkll;->a:Ljava/lang/String;

    return-object p1

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    sget-object p1, Ljws;->h:Ljws;

    return-object p1

    :pswitch_d
    check-cast p1, Lnrt;

    new-instance v7, Lkoj;

    iget v1, p1, Lnrt;->a:I

    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, p1, Lnrt;->b:Lnrw;

    if-nez v0, :cond_1

    sget-object v0, Lnrw;->c:Lnrw;

    :cond_1
    iget-object v0, v0, Lnrw;->a:Lnrv;

    if-nez v0, :cond_2

    sget-object v0, Lnrv;->e:Lnrv;

    :cond_2
    iget v0, v0, Lnrv;->a:I

    iget-object v3, p1, Lnrt;->b:Lnrw;

    if-nez v3, :cond_3

    sget-object v4, Lnrw;->c:Lnrw;

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    iget-object v4, v4, Lnrw;->a:Lnrv;

    if-nez v4, :cond_4

    sget-object v4, Lnrv;->e:Lnrv;

    :cond_4
    iget v4, v4, Lnrv;->b:I

    if-nez v3, :cond_5

    sget-object v5, Lnrw;->c:Lnrw;

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    iget-object v5, v5, Lnrw;->a:Lnrv;

    if-nez v5, :cond_6

    sget-object v5, Lnrv;->e:Lnrv;

    :cond_6
    iget v5, v5, Lnrv;->a:I

    if-nez v3, :cond_7

    sget-object v6, Lnrw;->c:Lnrw;

    goto :goto_3

    :cond_7
    move-object v6, v3

    :goto_3
    iget-object v6, v6, Lnrw;->a:Lnrv;

    if-nez v6, :cond_8

    sget-object v6, Lnrv;->e:Lnrv;

    :cond_8
    iget v6, v6, Lnrv;->c:I

    add-int/2addr v5, v6

    if-nez v3, :cond_9

    sget-object v6, Lnrw;->c:Lnrw;

    goto :goto_4

    :cond_9
    move-object v6, v3

    :goto_4
    iget-object v6, v6, Lnrw;->a:Lnrv;

    if-nez v6, :cond_a

    sget-object v6, Lnrv;->e:Lnrv;

    :cond_a
    iget v6, v6, Lnrv;->b:I

    if-nez v3, :cond_b

    sget-object v3, Lnrw;->c:Lnrw;

    goto :goto_5

    :cond_b
    :goto_5
    iget-object v3, v3, Lnrw;->a:Lnrv;

    if-nez v3, :cond_c

    sget-object v3, Lnrv;->e:Lnrv;

    :cond_c
    iget v3, v3, Lnrv;->d:I

    add-int/2addr v6, v3

    invoke-direct {v2, v0, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p1, p1, Lnrt;->c:F

    float-to-int v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkoj;-><init>(ILandroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object v7

    :pswitch_e
    check-cast p1, Lhip;

    new-instance v0, Ldld;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ldld;-><init>(Lhip;I)V

    return-object v0

    :pswitch_f
    check-cast p1, Leol;

    iget-object p1, p1, Leol;->c:Lhsa;

    return-object p1

    :pswitch_10
    check-cast p1, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    return-object p1

    :pswitch_11
    check-cast p1, Lcom/google/googlex/gcam/GrayImageS16;

    return-object v2

    :pswitch_12
    check-cast p1, Lcom/google/googlex/gcam/RawReadView;

    return-object v2

    :pswitch_13
    check-cast p1, Lcom/google/googlex/gcam/InterleavedImageU8;

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

    iget v0, p0, Lefv;->v:I

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
