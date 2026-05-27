.class public final synthetic Ldpq;
.super Ljava/lang/Object;

# interfaces
.implements Lgem;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lczn;I)V
    .locals 0

    iput p2, p0, Ldpq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldpy;I)V
    .locals 0

    iput p2, p0, Ldpq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfkz;I)V
    .locals 0

    iput p2, p0, Ldpq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhii;I)V
    .locals 0

    iput p2, p0, Ldpq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmqp;I)V
    .locals 0

    iput p2, p0, Ldpq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Logd;I)V
    .locals 0

    iput p2, p0, Ldpq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lgej;Z)V
    .locals 5

    iget v0, p0, Ldpq;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    if-eqz p2, :cond_4

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmqp;

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ligo;

    invoke-virtual {p1}, Ligo;->k()V

    return-void

    :pswitch_0
    iget-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    if-eqz p2, :cond_0

    check-cast p1, Lhii;

    iget-object p1, p1, Lhii;->b:Lhie;

    invoke-virtual {p1}, Lhie;->a()V

    return-void

    :cond_0
    check-cast p1, Lhii;

    iget-object p1, p1, Lhii;->b:Lhie;

    invoke-static {}, Ljuh;->a()V

    iget-object p2, p1, Lhie;->a:Lhrz;

    iget-object v0, p1, Lhie;->b:Landroid/content/Context;

    const v1, 0x7f0e00fc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lgdu;

    const/4 v4, 0x5

    invoke-direct {v3, p1, v4}, Lgdu;-><init>(Lhie;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p1, 0xa

    const v1, 0x7f1404b2

    invoke-virtual {p2, p1, v1, v0, v2}, Lhrz;->m(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    if-nez p2, :cond_2

    invoke-static {}, Ljuh;->a()V

    check-cast p1, Lfkz;

    iget-object p2, p1, Lfkz;->c:Landroid/view/View;

    if-nez p2, :cond_1

    new-instance p2, Landroid/widget/FrameLayout;

    iget-object v0, p1, Lfkz;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lfkz;->b:Landroid/content/Context;

    const v1, 0x7f0e0092

    invoke-static {v0, v1, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0458

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lhu;

    const/16 v2, 0x13

    invoke-direct {v1, p1, v2}, Lhu;-><init>(Lfkz;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p1, Lfkz;->c:Landroid/view/View;

    :cond_1
    iget-object p2, p1, Lfkz;->a:Lhrz;

    iget-object p1, p1, Lfkz;->c:Landroid/view/View;

    const/4 v0, 0x7

    const v1, 0x7f140311

    invoke-virtual {p2, v0, v1, p1}, Lhrz;->l(IILandroid/view/View;)V

    return-void

    :cond_2
    check-cast p1, Lfkz;

    invoke-virtual {p1}, Lfkz;->a()V

    return-void

    :pswitch_2
    iget-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfde;

    invoke-interface {p1}, Lfde;->a()V

    :cond_3
    return-void

    :pswitch_3
    iget-object p1, p0, Ldpq;->a:Ljava/lang/Object;

    check-cast p1, Lczn;

    iget-object p1, p1, Lczn;->a:Lczm;

    invoke-virtual {p1}, Lczm;->a()V

    return-void

    :pswitch_4
    iget-object p2, p0, Ldpq;->a:Ljava/lang/Object;

    check-cast p2, Ldpy;

    invoke-virtual {p2, p1}, Ldpy;->a(Lgej;)V

    return-void

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
