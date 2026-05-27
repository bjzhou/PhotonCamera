.class public final Llfr;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Llfr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llfr;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Llfr;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohz;->a:Lohz;

    invoke-virtual {v1}, Lohz;->b()Loia;

    move-result-object v1

    invoke-interface {v1, v0}, Loia;->a(Landroid/content/Context;)Lozu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohw;->a:Lohw;

    invoke-virtual {v1}, Lohw;->b()Lohx;

    move-result-object v1

    invoke-interface {v1, v0}, Lohx;->b(Landroid/content/Context;)Lozu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohw;->a:Lohw;

    invoke-virtual {v1}, Lohw;->b()Lohx;

    move-result-object v1

    invoke-interface {v1, v0}, Lohx;->a(Landroid/content/Context;)Llkl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loii;->a:Loii;

    invoke-virtual {v1}, Loii;->b()Loij;

    move-result-object v1

    invoke-interface {v1, v0}, Loij;->a(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohh;->a:Lohh;

    invoke-virtual {v1}, Lohh;->b()Lohi;

    move-result-object v1

    invoke-interface {v1, v0}, Lohi;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loii;->a:Loii;

    invoke-virtual {v1}, Loii;->b()Loij;

    move-result-object v1

    invoke-interface {v1, v0}, Loij;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohw;->a:Lohw;

    invoke-virtual {v1}, Lohw;->b()Lohx;

    move-result-object v1

    invoke-interface {v1, v0}, Lohx;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loht;->a:Loht;

    invoke-virtual {v1}, Loht;->b()Lohu;

    move-result-object v1

    invoke-interface {v1, v0}, Lohu;->c(Landroid/content/Context;)Llji;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Loht;->a:Loht;

    invoke-virtual {v1}, Loht;->b()Lohu;

    move-result-object v1

    invoke-interface {v1, v0}, Lohu;->a(Landroid/content/Context;)Lliz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohq;->a:Lohq;

    invoke-virtual {v1}, Lohq;->b()Lohr;

    move-result-object v1

    invoke-interface {v1, v0}, Lohr;->a(Landroid/content/Context;)Lozu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohw;->a:Lohw;

    invoke-virtual {v1}, Lohw;->b()Lohx;

    move-result-object v1

    invoke-interface {v1, v0}, Lohx;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohh;->a:Lohh;

    invoke-virtual {v1}, Lohh;->b()Lohi;

    move-result-object v1

    invoke-interface {v1, v0}, Lohi;->d(Landroid/content/Context;)Logq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohh;->a:Lohh;

    invoke-virtual {v1}, Lohh;->b()Lohi;

    move-result-object v1

    invoke-interface {v1, v0}, Lohi;->c(Landroid/content/Context;)Logq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_c
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohh;->a:Lohh;

    invoke-virtual {v1}, Lohh;->b()Lohi;

    move-result-object v1

    invoke-interface {v1, v0}, Lohi;->b(Landroid/content/Context;)Logq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohn;->a:Lohn;

    invoke-virtual {v1}, Lohn;->b()Loho;

    move-result-object v1

    invoke-interface {v1, v0}, Loho;->a(Landroid/content/Context;)Lozu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohk;->a:Lohk;

    invoke-virtual {v1}, Lohk;->b()Lohl;

    move-result-object v1

    invoke-interface {v1, v0}, Lohl;->a(Landroid/content/Context;)Loya;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lohk;->a:Lohk;

    invoke-virtual {v1}, Lohk;->b()Lohl;

    move-result-object v1

    invoke-interface {v1, v0}, Lohl;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Llfr;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    new-instance v1, Llga;

    invoke-direct {v1, v0}, Llga;-><init>(Lkrn;)V

    return-object v1

    :pswitch_11
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    new-instance v1, Lkrq;

    invoke-direct {v1}, Lkrq;-><init>()V

    invoke-virtual {v0, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Llfr;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    new-instance v1, Ljava/util/Random;

    invoke-interface {v0}, Lkrn;->b()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    return-object v1

    :pswitch_13
    iget-object v0, p0, Llfr;->a:Loiw;

    check-cast v0, Llft;

    invoke-virtual {v0}, Llft;->a()Llfw;

    move-result-object v0

    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v1, v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Llfw;)V

    invoke-static {v1}, Llfw;->a(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    return-object v0

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
