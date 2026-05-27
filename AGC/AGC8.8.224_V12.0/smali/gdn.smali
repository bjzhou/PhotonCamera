.class public final synthetic Lgdn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ldfa;Lklv;I[B[B)V
    .locals 0

    iput p3, p0, Lgdn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgdn;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgdv;Lgei;I)V
    .locals 0

    iput p3, p0, Lgdn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgdn;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgei;Landroid/content/res/Resources;I)V
    .locals 0

    iput p3, p0, Lgdn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdn;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgdn;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkou;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lgdn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgdn;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnfr;Ljava/util/function/BiFunction;I)V
    .locals 0

    iput p3, p0, Lgdn;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdn;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgdn;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lgdn;->c:I

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lgdn;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgdn;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgdn;->a:Ljava/lang/Object;

    check-cast v0, Lnfr;

    iget-object v2, v0, Lnfr;->b:Ljava/util/function/Function;

    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, v0, Lnfr;->c:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lgdn;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgdn;->a:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, p1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :pswitch_1
    iget-object v0, p0, Lgdn;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgdn;->a:Ljava/lang/Object;

    check-cast p1, Lgej;

    invoke-interface {v1, v0}, Lgei;->m(Lgeh;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lgdn;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgdn;->a:Ljava/lang/Object;

    check-cast p1, Lcwx;

    check-cast v0, Ldfa;

    iget-object v0, v0, Ldfa;->f:Ljava/lang/Object;

    check-cast v0, Ldja;

    invoke-virtual {v0}, Ldja;->o()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lnlm;->a:Lnlm;

    goto :goto_0

    :cond_1
    sget-object v0, Lklv;->a:Lklv;

    if-ne v1, v0, :cond_2

    sget-object p1, Lnlm;->b:Lnlm;

    goto :goto_0

    :cond_2
    sget-object v0, Lcwx;->a:Lcwx;

    sget-object v0, Ljyk;->a:Ljyk;

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {p1}, Lcwx;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Not a valid stabilization mode: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object p1, Lnlm;->f:Lnlm;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lnlm;->e:Lnlm;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lnlm;->d:Lnlm;

    goto :goto_0

    :pswitch_6
    sget-object p1, Lnlm;->c:Lnlm;

    :goto_0
    return-object p1

    :pswitch_7
    iget-object v0, p0, Lgdn;->a:Ljava/lang/Object;

    iget-object v1, p0, Lgdn;->b:Ljava/lang/Object;

    check-cast p1, Lgej;

    check-cast v1, Landroid/content/res/Resources;

    invoke-interface {v0, p1, v1}, Lgei;->y(Lgej;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, p1, v1}, Lgei;->s(Lgej;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1}, Lgei;->r(Lgej;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lget;

    invoke-direct {v1, p1, v2, v3, v0}, Lget;-><init>(Lgej;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lgdn;->c:I

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
