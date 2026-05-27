.class public final Lcrj;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->a:Loiw;

    iput-object p2, p0, Lcrj;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[F)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[I)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[Z)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[B)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[C)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[I)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[S)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[Z)V
    .locals 0

    iput p3, p0, Lcrj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrj;->b:Loiw;

    iput-object p2, p0, Lcrj;->a:Loiw;

    return-void
.end method

.method public static b(Loiw;Ldhi;)Lmqp;
    .locals 1

    sget-object v0, Ldhq;->am:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p0, Lest;

    invoke-virtual {p0}, Lest;->a()Lmqp;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lmpx;->a:Lmpx;

    :goto_0
    return-object p0
.end method

.method public static c(Loiw;Loiw;)Lcrj;
    .locals 3

    new-instance v0, Lcrj;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcrj;-><init>(Loiw;Loiw;I[C)V

    return-object v0
.end method

.method public static d(Loiw;Loiw;)Lcrj;
    .locals 3

    new-instance v0, Lcrj;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcrj;-><init>(Loiw;Loiw;I[S)V

    return-object v0
.end method

.method public static e(Loiw;Loiw;)Lcrj;
    .locals 3

    new-instance v0, Lcrj;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcrj;-><init>(Loiw;Loiw;I[[B)V

    return-object v0
.end method

.method public static f(Loiw;Loiw;)Lcrj;
    .locals 2

    new-instance v0, Lcrj;

    const/16 v1, 0xf

    invoke-direct {v0, p0, p1, v1}, Lcrj;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method

.method public static g(Loiw;Loiw;)Lcrj;
    .locals 3

    new-instance v0, Lcrj;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcrj;-><init>(Loiw;Loiw;I[[S)V

    return-object v0
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 3

    iget v0, p0, Lcrj;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcrj;->b:Loiw;

    iget-object v1, p0, Lcrj;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v0, Lmpx;->a:Lmpx;

    goto/16 :goto_f

    :pswitch_0
    iget-object v0, p0, Lcrj;->b:Loiw;

    iget-object v1, p0, Lcrj;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldic;->a:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcrj;->a:Loiw;

    iget-object v1, p0, Lcrj;->b:Loiw;

    check-cast v1, Lccs;

    invoke-virtual {v1}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_1
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcrj;->a:Loiw;

    iget-object v1, p0, Lcrj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldim;->a:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_2
    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcrj;->b:Loiw;

    check-cast v0, Ldmf;

    invoke-virtual {v0}, Ldmf;->a()Ldne;

    move-result-object v0

    iget-object v1, p0, Lcrj;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmqp;

    invoke-virtual {v0}, Ldne;->h()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsn;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_3
    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcrj;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    iget-object v1, p0, Lcrj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsr;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_4

    :cond_5
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcrj;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpo;

    iget-object v0, p0, Lcrj;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcrj;->b:Loiw;

    iget-object v1, p0, Lcrj;->a:Loiw;

    check-cast v1, Ldmf;

    invoke-virtual {v1}, Ldmf;->a()Ldne;

    move-result-object v1

    invoke-virtual {v1}, Ldne;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    goto :goto_5

    :cond_6
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lcrj;->a:Loiw;

    iget-object v1, p0, Lcrj;->b:Loiw;

    check-cast v1, Ldmf;

    invoke-virtual {v1}, Ldmf;->a()Ldne;

    move-result-object v1

    invoke-virtual {v1}, Ldne;->g()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_6

    :cond_7
    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    :goto_6
    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcrj;->a:Loiw;

    iget-object v1, p0, Lcrj;->b:Loiw;

    check-cast v1, Ldmf;

    invoke-virtual {v1}, Ldmf;->a()Ldne;

    move-result-object v1

    invoke-virtual {v1}, Ldne;->g()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_7

    :cond_8
    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcrj;->b:Loiw;

    iget-object v1, p0, Lcrj;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhu;->h:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_8

    :cond_9
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_8
    return-object v0

    :pswitch_a
    iget-object v0, p0, Lcrj;->b:Loiw;

    iget-object v1, p0, Lcrj;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhx;->e:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_9

    :cond_a
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_9
    return-object v0

    :pswitch_b
    iget-object v0, p0, Lcrj;->b:Loiw;

    iget-object v1, p0, Lcrj;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhx;->g:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_b

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_a

    :cond_b
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_a
    return-object v0

    :pswitch_c
    iget-object v0, p0, Lcrj;->a:Loiw;

    iget-object v1, p0, Lcrj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    invoke-static {v0, v1}, Lcrj;->b(Loiw;Ldhi;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lcrj;->a:Loiw;

    iget-object v1, p0, Lcrj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhr;->a:Ldhj;

    invoke-interface {v1}, Ldhi;->d()V

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lcrj;->b:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    iget-object v1, p0, Lcrj;->a:Loiw;

    check-cast v1, Lgbp;

    invoke-virtual {v1}, Lgbp;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lcrj;->b:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    iget-object v1, p0, Lcrj;->a:Loiw;

    check-cast v1, Lgbp;

    invoke-virtual {v1}, Lgbp;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lcrj;->b:Loiw;

    iget-object v1, p0, Lcrj;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldgu;->N:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_e

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_b

    :cond_e
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_b
    return-object v0

    :pswitch_11
    iget-object v0, p0, Lcrj;->a:Loiw;

    iget-object v1, p0, Lcrj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldgu;->ae:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_f

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_c

    :cond_f
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_c
    return-object v0

    :pswitch_12
    iget-object v0, p0, Lcrj;->a:Loiw;

    iget-object v1, p0, Lcrj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldho;->bX:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_d

    :cond_10
    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    :goto_d
    return-object v0

    :pswitch_13
    iget-object v0, p0, Lcrj;->a:Loiw;

    iget-object v1, p0, Lcrj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldgu;->ae:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_11

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_e

    :cond_11
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_e
    return-object v0

    :cond_12
    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    :goto_f
    return-object v0

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

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcrj;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_12
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_13
    invoke-virtual {p0}, Lcrj;->a()Lmqp;

    move-result-object v0

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
