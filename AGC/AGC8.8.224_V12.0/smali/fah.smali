.class public final synthetic Lfah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lfah;

.field public static final synthetic b:Lfah;

.field public static final synthetic c:Lfah;

.field public static final synthetic d:Lfah;

.field public static final synthetic e:Lfah;

.field public static final synthetic f:Lfah;

.field public static final synthetic g:Lfah;

.field public static final synthetic h:Lfah;

.field public static final synthetic i:Lfah;

.field public static final synthetic j:Lfah;

.field public static final synthetic k:Lfah;

.field public static final synthetic l:Lfah;

.field public static final synthetic m:Lfah;

.field public static final synthetic n:Lfah;

.field public static final synthetic o:Lfah;

.field public static final synthetic p:Lfah;

.field public static final synthetic q:Lfah;

.field public static final synthetic r:Lfah;

.field public static final synthetic s:Lfah;


# instance fields
.field private final synthetic t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfah;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->s:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->r:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->q:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->p:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->o:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->n:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->m:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->l:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->k:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->j:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->i:Lfah;

    new-instance v0, Lfah;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->h:Lfah;

    new-instance v0, Lfah;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->g:Lfah;

    new-instance v0, Lfah;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->f:Lfah;

    new-instance v0, Lfah;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->e:Lfah;

    new-instance v0, Lfah;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->d:Lfah;

    new-instance v0, Lfah;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->c:Lfah;

    new-instance v0, Lfah;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->b:Lfah;

    new-instance v0, Lfah;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfah;-><init>(I)V

    sput-object v0, Lfah;->a:Lfah;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfah;->t:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lfah;->t:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Linb;

    sget-object p1, Lmou;->a:Lnak;

    return-void

    :pswitch_0
    check-cast p1, Lmpa;

    iget-object v0, p1, Lmpa;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v3, p1, Lmpa;->b:I

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const-string v2, "Can\'t shut down: state of the audio stream parser \'%s\' is \'%s\'."

    iget-object v4, p1, Lmpa;->c:Ljava/lang/Object;

    invoke-static {v3}, Lmoz;->d(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_3

    invoke-static {v1, v2, v4, v7}, Lmoz;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p1, Lmpa;->b:I

    if-eq v1, v5, :cond_2

    iput v6, p1, Lmpa;->b:I

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    const/4 p1, 0x0

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    check-cast p1, Linb;

    invoke-virtual {p1}, Linb;->b()V

    return-void

    :pswitch_2
    check-cast p1, Lmpa;

    invoke-virtual {p1}, Lmpa;->b()V

    return-void

    :pswitch_3
    check-cast p1, Lils;

    invoke-interface {p1}, Lils;->f()V

    return-void

    :pswitch_4
    check-cast p1, Lils;

    invoke-interface {p1}, Lils;->g()V

    return-void

    :pswitch_5
    check-cast p1, Lhyc;

    sget-object v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->a:Lnak;

    iget-object v0, p1, Lhyc;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p1, Lhyc;->a:Lhxz;

    iget-object p1, p1, Lhxz;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :pswitch_6
    check-cast p1, Lhgj;

    invoke-virtual {p1, v1}, Lhgj;->setEnabled(Z)V

    sget-object v0, Lhgj;->a:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p1, v0}, Lhgj;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :pswitch_7
    check-cast p1, Lhgj;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lhgj;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lhgj;->setScaleX(F)V

    invoke-virtual {p1, v0}, Lhgj;->setScaleY(F)V

    invoke-virtual {p1, v0}, Lhgj;->setAlpha(F)V

    return-void

    :pswitch_8
    check-cast p1, Lgfn;

    invoke-virtual {p1}, Lgfn;->d()V

    invoke-virtual {p1, v2}, Lgfn;->setEnabled(Z)V

    return-void

    :pswitch_9
    check-cast p1, Lgen;

    invoke-interface {p1}, Lgen;->c()V

    return-void

    :pswitch_a
    check-cast p1, Lgen;

    invoke-interface {p1}, Lgen;->d()V

    return-void

    :pswitch_b
    check-cast p1, Lgen;

    invoke-interface {p1}, Lgen;->a()V

    return-void

    :pswitch_c
    check-cast p1, Lgen;

    invoke-interface {p1}, Lgen;->b()V

    return-void

    :pswitch_d
    check-cast p1, Lgeh;

    return-void

    :pswitch_e
    check-cast p1, Lgei;

    sget-object v0, Lgdv;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xa1e

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "%s"

    invoke-interface {v0, v1, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_f
    check-cast p1, Lfaz;

    sget v0, Lfak;->l:I

    instance-of v0, p1, Lfat;

    if-eqz v0, :cond_4

    check-cast p1, Lfat;

    invoke-interface {p1}, Lfat;->bM()V

    :cond_4
    return-void

    :pswitch_10
    check-cast p1, Lfaz;

    sget v0, Lfak;->l:I

    instance-of v0, p1, Lfay;

    if-eqz v0, :cond_5

    check-cast p1, Lfay;

    invoke-interface {p1}, Lfay;->e()V

    :cond_5
    return-void

    :pswitch_11
    check-cast p1, Lfaz;

    sget v0, Lfak;->l:I

    instance-of v0, p1, Lfar;

    if-eqz v0, :cond_6

    check-cast p1, Lfar;

    invoke-interface {p1}, Lfar;->a()V

    :cond_6
    return-void

    :pswitch_12
    check-cast p1, Lfaz;

    sget v0, Lfak;->l:I

    instance-of v0, p1, Lfaq;

    if-eqz v0, :cond_7

    check-cast p1, Lfaq;

    invoke-interface {p1}, Lfaq;->bK()V

    :cond_7
    return-void

    :pswitch_13
    check-cast p1, Lfaz;

    sget v0, Lfak;->l:I

    instance-of v0, p1, Lfao;

    if-eqz v0, :cond_8

    check-cast p1, Lfao;

    invoke-interface {p1}, Lfao;->a()V

    :cond_8
    return-void

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

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lfah;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_12
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

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
