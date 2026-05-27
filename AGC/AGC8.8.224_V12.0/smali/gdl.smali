.class public final synthetic Lgdl;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lgdk;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgdm;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgdv;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgdz;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgeh;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lggw;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lghe;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgla;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lglj;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljvk;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lken;I)V
    .locals 0

    iput p2, p0, Lgdl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdl;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lgdl;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast v0, Lglj;

    iget-object v0, v0, Lglj;->a:Ljwb;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    invoke-static {v2, p1}, Lgll;->a(ILmvv;)Lgll;

    move-result-object p1

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast v0, Lgla;

    iget-object v3, v0, Lgla;->d:Ljvk;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lgla;->a(FF)Lgkz;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Lhrm;

    invoke-virtual {p1}, Lhrm;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lhrm;->a:Lhrg;

    sget-object v4, Lhrg;->a:Lhrg;

    if-eq v3, v4, :cond_3

    iget v3, p1, Lhrm;->f:I

    if-eq v3, v1, :cond_3

    check-cast v0, Lghe;

    iget-object v3, v0, Lghe;->b:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lghe;->m:Ldhi;

    sget-object v4, Ldhh;->k:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lghe;->s:Lbkb;

    iget-object v3, v3, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    iget-object v3, p1, Lhrm;->a:Lhrg;

    sget-object v4, Lhrg;->c:Lhrg;

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lghe;->b(Lhrm;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v4, v0, Lghe;->p:Ldqx;

    iget-object v4, v4, Ldqx;->d:Ljava/lang/Object;

    check-cast v4, Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v1, v4

    invoke-virtual {v0, p1, v1, v3, v2}, Lghe;->e(Landroid/graphics/PointF;ZZZ)V

    return-void

    :cond_3
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    check-cast v0, Lggw;

    iget-object p1, v0, Lggw;->b:Ljuw;

    invoke-virtual {p1}, Ljuw;->b()V

    return-void

    :cond_4
    check-cast v0, Lggw;

    invoke-virtual {v0}, Lggw;->c()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Lgyp;

    sget-object v1, Lgyp;->a:Lgyp;

    if-ne p1, v1, :cond_5

    sget-object p1, Lgrx;->e:Lgrx;

    goto :goto_2

    :cond_5
    sget-object p1, Lgrx;->a:Lgrx;

    :goto_2
    check-cast v0, Ljvk;

    invoke-virtual {v0, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v0, v2, v1, v2}, Lken;->m(ZZZ)V

    :cond_6
    return-void

    :pswitch_5
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljwu;

    sget-object p1, Lgff;->a:Lnak;

    sget-object p1, Lgec;->m:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgff;->a:Lnak;

    invoke-interface {v0}, Lgeh;->b()Lika;

    move-result-object p1

    sget-object v1, Lika;->c:Lika;

    invoke-virtual {p1, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lgec;->m:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    :cond_7
    return-void

    :pswitch_7
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgff;->a:Lnak;

    sget-object p1, Lgec;->w:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgff;->a:Lnak;

    sget-object p1, Lgec;->l:Lgec;

    invoke-interface {v0, v1, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgff;->a:Lnak;

    invoke-interface {v0}, Lgeh;->b()Lika;

    move-result-object p1

    sget-object v1, Lika;->n:Lika;

    invoke-virtual {p1, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lgec;->m:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    :cond_8
    return-void

    :pswitch_a
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgff;->a:Lnak;

    sget-object p1, Lgec;->f:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgff;->a:Lnak;

    sget-object p1, Lika;->b:Lika;

    invoke-interface {v0}, Lgeh;->b()Lika;

    move-result-object v1

    invoke-virtual {p1, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lgec;->k:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    :cond_9
    return-void

    :pswitch_c
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgec;->A:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Lhxi;

    sget-object p1, Lgec;->z:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object p1, Lgec;->z:Lgec;

    invoke-interface {v0, v2, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Lgdz;

    invoke-virtual {v0}, Lgdz;->b()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Lgyu;

    sget-object v1, Lgdz;->b:Lmtc;

    check-cast v1, Lmyt;

    iget-object v1, v1, Lmyt;->c:Lmyt;

    invoke-interface {v1, p1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgej;

    if-eqz p1, :cond_a

    check-cast v0, Lgdz;

    iget-object v0, v0, Lgdz;->h:Lgfn;

    invoke-virtual {v0, p1}, Lgfn;->f(Lgej;)V

    :cond_a
    return-void

    :pswitch_11
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Lgdv;

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lgdv;->o(ZLgec;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    invoke-virtual {p1}, Ldbw;->a()Lklv;

    move-result-object p1

    check-cast v0, Lgdk;

    invoke-virtual {v0, p1}, Lgdk;->f(Lklv;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lgdl;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    check-cast v0, Lgdm;

    iget-object v0, v0, Lgdm;->d:Lgeu;

    invoke-interface {v0, p1}, Lgeu;->g(Lika;)V

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
