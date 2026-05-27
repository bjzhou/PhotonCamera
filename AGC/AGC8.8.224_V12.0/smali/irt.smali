.class public final Lirt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Float;

.field private static final b:Ljava/lang/Float;

.field private static final c:Ljava/lang/Float;

.field private static final d:Ljava/lang/Float;

.field private static final e:Ljava/lang/Float;

.field private static final f:Ljava/lang/Float;

.field private static final g:Ljava/lang/Float;

.field private static final h:Ljava/lang/Float;

.field private static final i:Ljava/lang/Float;

.field private static final j:Ljava/lang/Float;

.field private static final k:Ljava/lang/Float;


# instance fields
.field private final l:Ljava/lang/Float;

.field private final m:Ljava/lang/Float;

.field private final n:Ljava/lang/Float;

.field private final o:Ljava/lang/Float;

.field private final p:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lirt;->a:Ljava/lang/Float;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lirt;->b:Ljava/lang/Float;

    sput-object v0, Lirt;->c:Ljava/lang/Float;

    const v0, 0x40266666    # 2.6f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lirt;->d:Ljava/lang/Float;

    const v0, 0x3fb33333    # 1.4f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lirt;->e:Ljava/lang/Float;

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lirt;->f:Ljava/lang/Float;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lirt;->g:Ljava/lang/Float;

    sput-object v0, Lirt;->h:Ljava/lang/Float;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lirt;->i:Ljava/lang/Float;

    sput-object v0, Lirt;->j:Ljava/lang/Float;

    sput-object v0, Lirt;->k:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldho;->an:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lirt;->l:Ljava/lang/Float;

    sget-object v0, Ldho;->ao:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0}, Lcom/agc/LensSettings;->getZoomRatio(Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lirt;->m:Ljava/lang/Float;

    sget-object v0, Ldho;->ap:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lirt;->n:Ljava/lang/Float;

    sget-object v0, Ldho;->aq:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lirt;->o:Ljava/lang/Float;

    sget-object v0, Ldib;->f:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Lirt;->p:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final a(I)Lmwa;
    .locals 8

    sget-object v0, Lika;->a:Lika;

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Litn;->b:Litn;

    sget-object v0, Lirt;->c:Ljava/lang/Float;

    sget-object v1, Litn;->c:Litn;

    sget-object v2, Lirt;->h:Ljava/lang/Float;

    invoke-static {p1, v0, v1, v2}, Lmwa;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_0
    sget-object p1, Litn;->b:Litn;

    sget-object v0, Lirt;->c:Ljava/lang/Float;

    sget-object v1, Litn;->c:Litn;

    sget-object v2, Lirt;->g:Ljava/lang/Float;

    invoke-static {p1, v0, v1, v2}, Lmwa;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_1
    sget-object p1, Litn;->b:Litn;

    sget-object v0, Lirt;->c:Ljava/lang/Float;

    sget-object v1, Litn;->c:Litn;

    sget-object v2, Lirt;->f:Ljava/lang/Float;

    invoke-static {p1, v0, v1, v2}, Lmwa;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Litn;->b:Litn;

    sget-object v0, Lirt;->c:Ljava/lang/Float;

    sget-object v1, Litn;->c:Litn;

    sget-object v2, Lirt;->e:Ljava/lang/Float;

    invoke-static {p1, v0, v1, v2}, Lmwa;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_3
    sget-object p1, Litn;->b:Litn;

    iget-object v0, p0, Lirt;->l:Ljava/lang/Float;

    sget-object v1, Litn;->c:Litn;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lmwa;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_4
    sget-object p1, Litn;->b:Litn;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Litn;->c:Litn;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lmwa;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_5
    sget-object p1, Litn;->b:Litn;

    sget-object v0, Lirt;->b:Ljava/lang/Float;

    sget-object v1, Litn;->c:Litn;

    sget-object v2, Lirt;->d:Ljava/lang/Float;

    invoke-static {p1, v0, v1, v2}, Lmwa;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_6
    sget-object p1, Litn;->b:Litn;

    iget-object v0, p0, Lirt;->p:Ljava/lang/Float;

    sget-object v1, Litn;->c:Litn;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lmwa;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_7
    sget-object p1, Litn;->b:Litn;

    sget-object v0, Lirt;->a:Ljava/lang/Float;

    sget-object v1, Litn;->c:Litn;

    iget-object v2, p0, Lirt;->m:Ljava/lang/Float;

    invoke-static {p1, v0, v1, v2}, Lmwa;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_8
    sget-object v0, Litn;->a:Litn;

    iget-object v1, p0, Lirt;->l:Ljava/lang/Float;

    sget-object v2, Litn;->b:Litn;

    sget-object v3, Lirt;->a:Ljava/lang/Float;

    sget-object v4, Litn;->c:Litn;

    iget-object v5, p0, Lirt;->m:Ljava/lang/Float;

    sget-object v6, Litn;->d:Litn;

    iget-object v7, p0, Lirt;->n:Ljava/lang/Float;

    invoke-static/range {v0 .. v7}, Lmwa;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_9
    sget-object v0, Litn;->a:Litn;

    iget-object v1, p0, Lirt;->l:Ljava/lang/Float;

    sget-object v2, Litn;->b:Litn;

    sget-object v3, Lirt;->a:Ljava/lang/Float;

    sget-object v4, Litn;->c:Litn;

    iget-object v5, p0, Lirt;->m:Ljava/lang/Float;

    invoke-static/range {v0 .. v5}, Lmwa;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Lmwn;
    .locals 4

    sget-object v0, Lika;->a:Lika;

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object p1, Lirt;->c:Ljava/lang/Float;

    sget-object v0, Lirt;->h:Ljava/lang/Float;

    sget-object v1, Lirt;->k:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    sget-object p1, Lirt;->c:Ljava/lang/Float;

    sget-object v0, Lirt;->g:Ljava/lang/Float;

    sget-object v1, Lirt;->j:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    sget-object p1, Lirt;->c:Ljava/lang/Float;

    sget-object v0, Lirt;->e:Ljava/lang/Float;

    sget-object v1, Lirt;->i:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    sget-object p1, Lirt;->a:Ljava/lang/Float;

    iget-object v0, p0, Lirt;->m:Ljava/lang/Float;

    iget-object v1, p0, Lirt;->o:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    sget-object p1, Lirt;->b:Ljava/lang/Float;

    sget-object v0, Lirt;->d:Ljava/lang/Float;

    iget-object v1, p0, Lirt;->o:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lirt;->p:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lirt;->o:Ljava/lang/Float;

    invoke-static {p1, v0, v1}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lirt;->l:Ljava/lang/Float;

    sget-object v0, Lirt;->a:Ljava/lang/Float;

    iget-object v1, p0, Lirt;->m:Ljava/lang/Float;

    iget-object v2, p0, Lirt;->n:Ljava/lang/Float;

    iget-object v3, p0, Lirt;->o:Ljava/lang/Float;

    invoke-static {p1, v0, v1, v2, v3}, Lmvv;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lirt;->l:Ljava/lang/Float;

    sget-object v0, Lirt;->a:Ljava/lang/Float;

    iget-object v1, p0, Lirt;->m:Ljava/lang/Float;

    iget-object v2, p0, Lirt;->o:Ljava/lang/Float;

    invoke-static {p1, v0, v1, v2}, Lmvv;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lifp;->p:Lifp;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lmtf;->b:Lj$/util/stream/Collector;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmwn;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
