.class public final synthetic Lcot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcot;

.field public static final synthetic b:Lcot;

.field public static final synthetic c:Lcot;

.field public static final synthetic d:Lcot;

.field public static final synthetic e:Lcot;

.field public static final synthetic f:Lcot;

.field public static final synthetic g:Lcot;

.field public static final synthetic h:Lcot;

.field public static final synthetic i:Lcot;

.field public static final synthetic j:Lcot;

.field public static final synthetic k:Lcot;

.field public static final synthetic l:Lcot;

.field public static final synthetic m:Lcot;

.field public static final synthetic n:Lcot;

.field public static final synthetic o:Lcot;

.field public static final synthetic p:Lcot;

.field public static final synthetic q:Lcot;

.field public static final synthetic r:Lcot;


# instance fields
.field private final synthetic s:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcot;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->r:Lcot;

    new-instance v0, Lcot;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->q:Lcot;

    new-instance v0, Lcot;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->p:Lcot;

    new-instance v0, Lcot;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->o:Lcot;

    new-instance v0, Lcot;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->n:Lcot;

    new-instance v0, Lcot;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->m:Lcot;

    new-instance v0, Lcot;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->l:Lcot;

    new-instance v0, Lcot;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->k:Lcot;

    new-instance v0, Lcot;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->j:Lcot;

    new-instance v0, Lcot;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->i:Lcot;

    new-instance v0, Lcot;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->h:Lcot;

    new-instance v0, Lcot;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->g:Lcot;

    new-instance v0, Lcot;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->f:Lcot;

    new-instance v0, Lcot;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->e:Lcot;

    new-instance v0, Lcot;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->d:Lcot;

    new-instance v0, Lcot;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->c:Lcot;

    new-instance v0, Lcot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->b:Lcot;

    new-instance v0, Lcot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcot;-><init>(I)V

    sput-object v0, Lcot;->a:Lcot;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcot;->s:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcot;->s:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lfaz;

    sget v0, Lezx;->e:I

    instance-of v0, p1, Lfsy;

    if-eqz v0, :cond_9

    check-cast p1, Lfsy;

    return-void

    :pswitch_0
    check-cast p1, Lfaz;

    sget v0, Lezx;->e:I

    instance-of v0, p1, Lguq;

    if-eqz v0, :cond_0

    check-cast p1, Lguq;

    invoke-virtual {p1}, Lguq;->b()V

    :cond_0
    return-void

    :pswitch_1
    check-cast p1, Lfaz;

    sget v0, Lezx;->e:I

    instance-of v0, p1, Leza;

    if-eqz v0, :cond_1

    check-cast p1, Leza;

    invoke-interface {p1}, Leza;->a()V

    :cond_1
    return-void

    :pswitch_2
    check-cast p1, Lfaz;

    sget v0, Lezx;->e:I

    instance-of v0, p1, Lezn;

    if-eqz v0, :cond_2

    check-cast p1, Lezn;

    invoke-interface {p1}, Lezn;->a()V

    :cond_2
    return-void

    :pswitch_3
    check-cast p1, Lfaz;

    sget v0, Lezx;->e:I

    instance-of v0, p1, Lfsy;

    if-eqz v0, :cond_3

    check-cast p1, Lfsy;

    :cond_3
    return-void

    :pswitch_4
    check-cast p1, Lfaz;

    sget v0, Lezx;->e:I

    instance-of v0, p1, Lezp;

    if-eqz v0, :cond_4

    check-cast p1, Lezp;

    invoke-interface {p1}, Lezp;->a()V

    :cond_4
    return-void

    :pswitch_5
    check-cast p1, Lfaz;

    sget v0, Lezx;->e:I

    instance-of v0, p1, Leyz;

    if-eqz v0, :cond_5

    check-cast p1, Leyz;

    invoke-interface {p1}, Leyz;->a()V

    :cond_5
    return-void

    :pswitch_6
    check-cast p1, Lfaz;

    sget v0, Lezx;->e:I

    instance-of v0, p1, Leze;

    if-eqz v0, :cond_6

    check-cast p1, Leze;

    invoke-interface {p1}, Leze;->a()V

    :cond_6
    return-void

    :pswitch_7
    check-cast p1, Lfaz;

    sget v0, Lezx;->e:I

    instance-of v0, p1, Lezm;

    if-eqz v0, :cond_7

    check-cast p1, Lezm;

    invoke-interface {p1}, Lezm;->a()V

    :cond_7
    return-void

    :pswitch_8
    check-cast p1, Lcom/google/googlex/gcam/GrayImageS16;

    invoke-virtual {p1}, Lcom/google/googlex/gcam/GrayImageS16;->a()V

    return-void

    :pswitch_9
    check-cast p1, Lcom/google/googlex/gcam/GrayImageS16;

    invoke-virtual {p1}, Lcom/google/googlex/gcam/GrayImageS16;->a()V

    return-void

    :pswitch_a
    check-cast p1, Lcom/google/googlex/gcam/RawReadView;

    invoke-virtual {p1}, Lcom/google/googlex/gcam/RawReadView;->a()V

    return-void

    :pswitch_b
    check-cast p1, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()V

    return-void

    :pswitch_c
    check-cast p1, Lchg;

    invoke-interface {p1}, Lchg;->b()V

    return-void

    :pswitch_d
    check-cast p1, Lchg;

    invoke-interface {p1}, Lchg;->a()V

    return-void

    :pswitch_e
    check-cast p1, Ldaw;

    invoke-interface {p1}, Ldaw;->a()V

    return-void

    :pswitch_f
    check-cast p1, Ldaw;

    invoke-interface {p1}, Ldaw;->b()V

    return-void

    :pswitch_10
    check-cast p1, Lctd;

    invoke-interface {p1}, Lctd;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lctd;->close()V

    return-void

    :cond_8
    invoke-interface {p1}, Lctd;->g()V

    return-void

    :pswitch_11
    check-cast p1, Lcqs;

    invoke-interface {p1}, Lcqs;->g()V

    return-void

    :pswitch_12
    check-cast p1, Lcqs;

    invoke-interface {p1}, Lcqs;->h()V

    return-void

    :pswitch_13
    check-cast p1, Lcqs;

    invoke-interface {p1}, Lcqs;->f()V

    return-void

    :cond_9
    return-void

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

    iget v0, p0, Lcot;->s:I

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
