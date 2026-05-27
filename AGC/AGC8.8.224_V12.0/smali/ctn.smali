.class public final synthetic Lctn;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcbs;Landroid/graphics/PointF;Landroid/graphics/RectF;I)V
    .locals 0

    iput p4, p0, Lctn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lctn;->a:Ljava/lang/Object;

    iput-object p3, p0, Lctn;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcrz;Lken;Lcsc;I)V
    .locals 0

    iput p4, p0, Lctn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctn;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctn;->b:Ljava/lang/Object;

    iput-object p3, p0, Lctn;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfmf;Lchk;Lika;I)V
    .locals 0

    iput p4, p0, Lctn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctn;->c:Ljava/lang/Object;

    iput-object p2, p0, Lctn;->a:Ljava/lang/Object;

    iput-object p3, p0, Lctn;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgla;Ldhi;Lken;I)V
    .locals 0

    iput p4, p0, Lctn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctn;->c:Ljava/lang/Object;

    iput-object p2, p0, Lctn;->a:Ljava/lang/Object;

    iput-object p3, p0, Lctn;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljvs;Ljuh;I)V
    .locals 0

    iput p4, p0, Lctn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lctn;->c:Ljava/lang/Object;

    iput-object p3, p0, Lctn;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Predicate;Lgeh;Lgec;I)V
    .locals 0

    iput p4, p0, Lctn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lctn;->c:Ljava/lang/Object;

    iput-object p3, p0, Lctn;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lken;Lcrz;Lcsc;I)V
    .locals 0

    iput p4, p0, Lctn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lctn;->a:Ljava/lang/Object;

    iput-object p3, p0, Lctn;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;Ljvs;Lkbh;I)V
    .locals 0

    iput p4, p0, Lctn;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lctn;->a:Ljava/lang/Object;

    iput-object p3, p0, Lctn;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lctn;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lctn;->b:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lglt;

    invoke-interface {v0}, Lglt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgq;

    iget-object v0, v0, Lkgq;->c:Lmwn;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v2, p1}, Lkbh;->c(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lctn;->c:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v3, p0, Lctn;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgkz;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v5, Liux;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v5, :cond_1

    check-cast v0, Lgla;

    invoke-virtual {v0}, Lgla;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v1, Lgkz;->a:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v1, Lgkz;->b:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Ldhb;->b:Ldhj;

    invoke-interface {v2, v6}, Ldhi;->k(Ldhj;)Z

    move-result v2

    if-eq v4, v2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, v1, Lgkz;->c:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Liux;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Lnsy;->Y(Ljava/util/Collection;)[F

    move-result-object v0

    invoke-static {p1, v0}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, v1, Lgkz;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-static {p1, v0}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object p1

    invoke-interface {v3, p1}, Lken;->j(Ljava/util/Set;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lctn;->c:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v0, Lfmf;

    iget v4, v0, Lfmf;->a:I

    if-ne v3, v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lfmf;->a:I

    check-cast v2, Lika;

    check-cast v1, Lchk;

    invoke-virtual {v0, v1, v2}, Lfmf;->a(Lchk;Lika;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lctn;->c:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v0, Lfmf;

    iget v4, v0, Lfmf;->c:I

    if-ne v3, v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lfmf;->c:I

    check-cast v2, Lika;

    check-cast v1, Lchk;

    invoke-virtual {v0, v1, v2}, Lfmf;->a(Lchk;Lika;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lctn;->c:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v0, Lfmf;

    iget v4, v0, Lfmf;->b:I

    if-ne v3, v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lfmf;->b:I

    check-cast v2, Lika;

    check-cast v1, Lchk;

    invoke-virtual {v0, v1, v2}, Lfmf;->a(Lchk;Lika;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lctn;->c:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v1, Lchk;

    iget-boolean v3, v1, Lchk;->a:Z

    if-eqz v3, :cond_6

    check-cast v0, Lfmf;

    iget-boolean v3, v0, Lfmf;->d:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v3, v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lfmf;->d:Z

    check-cast v2, Lika;

    invoke-virtual {v0, v1, v2}, Lfmf;->a(Lchk;Lika;)V

    return-void

    :cond_6
    :goto_0
    return-void

    :pswitch_5
    iget-object v0, p0, Lctn;->c:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->b:Ljava/lang/Object;

    check-cast p1, Lhxi;

    iget-object v3, p1, Lhxi;->a:Lhxj;

    sget-object v4, Lhxj;->a:Lhxj;

    if-eq v3, v4, :cond_9

    check-cast v1, Lchk;

    iget-boolean v4, v1, Lchk;->a:Z

    if-eqz v4, :cond_8

    check-cast v0, Lfmf;

    iget-object v4, v0, Lfmf;->e:Lhxi;

    iget-object v4, v4, Lhxi;->a:Lhxj;

    if-ne v4, v3, :cond_7

    goto :goto_1

    :cond_7
    iput-object p1, v0, Lfmf;->e:Lhxi;

    check-cast v2, Lika;

    invoke-virtual {v0, v1, v2}, Lfmf;->a(Lchk;Lika;)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    check-cast v0, Lfmf;

    iput-object p1, v0, Lfmf;->e:Lhxi;

    return-void

    :pswitch_6
    iget-object v0, p0, Lctn;->c:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v0, Lfmf;

    iget v4, v0, Lfmf;->a:I

    if-ne v3, v4, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lfmf;->a:I

    check-cast v2, Lika;

    check-cast v1, Lchk;

    invoke-virtual {v0, v1, v2}, Lfmf;->a(Lchk;Lika;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lctn;->b:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->c:Ljava/lang/Object;

    iget-object v3, p0, Lctn;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lflu;

    invoke-direct {p1}, Lflu;-><init>()V

    invoke-interface {v2, p1, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_b
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkad;

    invoke-interface {p1}, Lkad;->close()V

    :cond_c
    sget-object p1, Lnru;->b:Lnru;

    iget-object p1, p1, Lnru;->a:Lnxa;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lefv;->g:Lefv;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Ldfu;->c:Ldfu;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkoj;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnrt;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lnrt;->b:Lnrw;

    if-nez v1, :cond_d

    sget-object v1, Lnrw;->c:Lnrw;

    :cond_d
    iget-object v1, v1, Lnrw;->b:Lnrv;

    if-nez v1, :cond_e

    sget-object v1, Lnrv;->e:Lnrv;

    :cond_e
    iget v1, v1, Lnrv;->a:I

    iget-object p1, p1, Lnrt;->b:Lnrw;

    if-nez p1, :cond_f

    sget-object v2, Lnrw;->c:Lnrw;

    goto :goto_2

    :cond_f
    move-object v2, p1

    :goto_2
    iget-object v2, v2, Lnrw;->b:Lnrv;

    if-nez v2, :cond_10

    sget-object v2, Lnrv;->e:Lnrv;

    :cond_10
    iget v2, v2, Lnrv;->b:I

    if-nez p1, :cond_11

    sget-object v3, Lnrw;->c:Lnrw;

    goto :goto_3

    :cond_11
    move-object v3, p1

    :goto_3
    iget-object v3, v3, Lnrw;->b:Lnrv;

    if-nez v3, :cond_12

    sget-object v3, Lnrv;->e:Lnrv;

    :cond_12
    iget v3, v3, Lnrv;->a:I

    if-nez p1, :cond_13

    sget-object v4, Lnrw;->c:Lnrw;

    goto :goto_4

    :cond_13
    move-object v4, p1

    :goto_4
    iget-object v4, v4, Lnrw;->b:Lnrv;

    if-nez v4, :cond_14

    sget-object v4, Lnrv;->e:Lnrv;

    :cond_14
    iget v4, v4, Lnrv;->c:I

    add-int/2addr v3, v4

    if-nez p1, :cond_15

    sget-object v4, Lnrw;->c:Lnrw;

    goto :goto_5

    :cond_15
    move-object v4, p1

    :goto_5
    iget-object v4, v4, Lnrw;->b:Lnrv;

    if-nez v4, :cond_16

    sget-object v4, Lnrv;->e:Lnrv;

    :cond_16
    iget v4, v4, Lnrv;->b:I

    if-nez p1, :cond_17

    sget-object p1, Lnrw;->c:Lnrw;

    goto :goto_6

    :cond_17
    :goto_6
    iget-object p1, p1, Lnrw;->b:Lnrv;

    if-nez p1, :cond_18

    sget-object p1, Lnrv;->e:Lnrv;

    :cond_18
    iget p1, p1, Lnrv;->d:I

    add-int/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_19
    return-void

    :pswitch_8
    iget-object v0, p0, Lctn;->b:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->c:Ljava/lang/Object;

    iget-object v3, p0, Lctn;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    check-cast v3, Lgec;

    invoke-interface {v2, v1, v3}, Lgeh;->o(ZLgec;)V

    :cond_1a
    return-void

    :pswitch_9
    iget-object v0, p0, Lctn;->b:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    check-cast v2, Lcsc;

    check-cast v1, Lcrz;

    invoke-static {v0, v1, v2}, Ldfa;->i(Lken;Lcrz;Lcsc;)V

    :cond_1b
    return-void

    :pswitch_a
    iget-object v0, p0, Lctn;->b:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->c:Ljava/lang/Object;

    check-cast p1, Lccu;

    check-cast v0, Lcbs;

    iget-object v3, v0, Lcbs;->a:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1c

    new-instance v3, Likm;

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    check-cast v2, Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v3, v4, v1, v5, v2}, Likm;-><init>(FFFF)V

    iget-object v0, v0, Lcbs;->b:Lfbz;

    sget-object v1, Lccu;->d:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v0, v3, p1}, Lfbz;->S(Likm;Z)V

    :cond_1c
    return-void

    :pswitch_b
    iget-object v0, p0, Lctn;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctn;->b:Ljava/lang/Object;

    iget-object v2, p0, Lctn;->c:Ljava/lang/Object;

    check-cast p1, Lcrx;

    check-cast v0, Lcrz;

    iget-object p1, v0, Lcrz;->h:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1d

    check-cast v2, Lcsc;

    invoke-static {v1, v0, v2}, Ldfa;->i(Lken;Lcrz;Lcsc;)V

    :cond_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
