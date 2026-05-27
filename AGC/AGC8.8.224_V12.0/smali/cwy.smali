.class public final synthetic Lcwy;
.super Ljava/lang/Object;

# interfaces
.implements Lcxa;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcpu;I)V
    .locals 0

    iput p2, p0, Lcwy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcxb;I)V
    .locals 0

    iput p2, p0, Lcwy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfoc;I)V
    .locals 0

    iput p2, p0, Lcwy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwy;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfoj;I)V
    .locals 0

    iput p2, p0, Lcwy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwy;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcwx;Lcwx;Z)V
    .locals 3

    iget v0, p0, Lcwy;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p3, p0, Lcwy;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Lcxb;->f(Lcwx;Lcwx;)Z

    move-result p1

    if-eqz p1, :cond_5

    check-cast p3, Lfoj;

    iget-object p1, p3, Lfoj;->d:Ljuh;

    new-instance p2, Lfof;

    invoke-direct {p2, p3, v1}, Lfof;-><init>(Lfoj;I)V

    invoke-virtual {p1, p2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcwy;->a:Ljava/lang/Object;

    check-cast p1, Lfoc;

    iget-object p3, p1, Lfoc;->j:Lcsa;

    invoke-virtual {p3}, Lcsa;->a()Lcrz;

    move-result-object p3

    iget-object p3, p3, Lcrz;->g:Ljwb;

    check-cast p3, Ljvk;

    iget-object p3, p3, Ljvk;->d:Ljava/lang/Object;

    check-cast p3, Lcrx;

    sget-object v0, Lcrx;->e:Lcrx;

    invoke-virtual {p3, v0}, Lcrx;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lcwx;->b:Lcwx;

    invoke-virtual {p2, p3}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lfoc;->h:Lczq;

    invoke-interface {p2, v2}, Lczq;->h(Z)V

    iget-object p1, p1, Lfoc;->k:Litm;

    invoke-interface {p1, v2}, Litm;->l(Z)V

    return-void

    :cond_1
    iget-object p2, p1, Lfoc;->h:Lczq;

    invoke-interface {p2, v2}, Lczq;->d(Z)V

    iget-object p2, p1, Lfoc;->l:Lmrl;

    invoke-interface {p2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhyt;

    iget-object p2, p2, Lhyt;->a:Lhys;

    iget-object p3, p2, Lhys;->i:Lhyn;

    iget-object p2, p2, Lhys;->g:Liko;

    invoke-static {p3, p2}, Lbze;->af(Lhyn;Liko;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lfoc;->k:Litm;

    invoke-interface {p1}, Litm;->ab()V

    return-void

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcwy;->a:Ljava/lang/Object;

    sget-object v1, Lcwx;->d:Lcwx;

    invoke-virtual {p1, v1}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcwx;->b:Lcwx;

    invoke-virtual {p2, p1}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    move-object p1, v0

    check-cast p1, Lcpu;

    iget p3, p1, Lcpu;->H:I

    add-int/2addr p3, v2

    iput p3, p1, Lcpu;->H:I

    :cond_3
    check-cast v0, Lcpu;

    iget-object p1, v0, Lcpu;->E:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Lcwy;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Lcxb;->f(Lcwx;Lcwx;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v2, Lcwz;

    check-cast v0, Lcxb;

    invoke-direct {v2, v0, p2, p3, v1}, Lcwz;-><init>(Lcxb;Lcwx;ZI)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
