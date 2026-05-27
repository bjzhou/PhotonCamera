.class public final synthetic Lcqf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcqa;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcqh;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcqh;I[B)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcqj;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcqm;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcqo;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcri;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcrr;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcsg;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcsk;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcsz;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcty;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrd;I)V
    .locals 0

    iput p2, p0, Lcqf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqf;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcqf;->b:I

    const v1, 0x7f140594

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcty;

    iget-object v0, v0, Lcty;->a:Lhxb;

    invoke-interface {v0}, Lhxb;->b()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Lcsz;

    iget-object v1, v1, Lcsz;->c:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lcsz;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x260

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Error closing MediaFile."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_1
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    :try_start_2
    move-object v1, v0

    check-cast v1, Lcsz;

    iget-object v1, v1, Lcsz;->c:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    check-cast v0, Lcsz;

    iget-object v0, v0, Lcsz;->b:Lgxr;

    invoke-virtual {v0}, Lgxr;->d()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    sget-object v1, Lcsz;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Error closing MediaFile."

    const/16 v3, 0x25e

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcsk;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcsk;->c(F)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcsg;

    iget-object v1, v0, Lcsg;->e:Leg;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Leg;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcsg;->e:Leg;

    invoke-virtual {v0}, Lff;->dismiss()V

    :cond_2
    return-void

    :pswitch_4
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcsg;

    iget-object v2, v0, Lcsg;->f:Ljew;

    invoke-virtual {v0}, Lcsg;->a()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    iget-object v4, v2, Ljew;->a:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Ljew;->a:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140596

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4, v3}, Ljew;->N(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lef;

    move-result-object v1

    invoke-static {v1}, Ljew;->R(Lef;)Leg;

    move-result-object v1

    iput-object v1, v0, Lcsg;->e:Leg;

    invoke-virtual {v0}, Lcsg;->c()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcsg;

    iget-object v1, v0, Lcsg;->e:Leg;

    if-eqz v1, :cond_3

    new-instance v2, Lcsf;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcsf;-><init>(Lcsg;I)V

    invoke-virtual {v1, v2}, Leg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Leg;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Leg;->show()V

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Lff;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, v0, Lcsg;->d:Lcha;

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Lcha;->j(Z)V

    :cond_3
    return-void

    :pswitch_6
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcsg;

    iget-object v1, v0, Lcsg;->f:Ljew;

    invoke-virtual {v0}, Lcsg;->b()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljew;->P(Landroid/content/DialogInterface$OnClickListener;)Leg;

    move-result-object v1

    iput-object v1, v0, Lcsg;->e:Leg;

    invoke-virtual {v0}, Lcsg;->c()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcsg;

    iget-object v1, v0, Lcsg;->f:Ljew;

    invoke-virtual {v0}, Lcsg;->b()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljew;->Q(Landroid/content/DialogInterface$OnClickListener;)Leg;

    move-result-object v1

    iput-object v1, v0, Lcsg;->e:Leg;

    invoke-virtual {v0}, Lcsg;->c()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcsg;

    iget-object v2, v0, Lcsg;->f:Ljew;

    invoke-virtual {v0}, Lcsg;->a()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    iget-object v4, v2, Ljew;->a:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Ljew;->a:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140597

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4, v3}, Ljew;->N(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lef;

    move-result-object v1

    invoke-static {v1}, Ljew;->R(Lef;)Leg;

    move-result-object v1

    iput-object v1, v0, Lcsg;->e:Leg;

    invoke-virtual {v0}, Lcsg;->c()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcrr;

    iget-object v0, v0, Lcrr;->e:Ldms;

    invoke-virtual {v0}, Ldms;->c()V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcri;

    iget v1, v0, Lcri;->g:I

    invoke-virtual {v0, v1}, Lcri;->b(I)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqo;

    iget-object v1, v0, Lcqo;->a:Lccg;

    iget-object v0, v0, Lcqo;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcqo;->k:Z

    return-void

    :pswitch_c
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqo;

    iget-object v0, v0, Lcqo;->i:Lnph;

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqo;

    iget-object v1, v0, Lcqo;->a:Lccg;

    iget-object v0, v0, Lcqo;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqo;

    iget-object v0, v0, Lcqo;->o:Lcvr;

    sget-object v1, Lcua;->e:Lcua;

    invoke-virtual {v0, v1}, Lcvr;->r(Lcua;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqm;

    iget-object v1, v0, Lcqm;->b:Lcqo;

    iget-object v1, v1, Lcqo;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    sget-object v2, Lhrc;->a:Lhrc;

    invoke-interface {v1, v2}, Lhrd;->j(Lhrc;)V

    iget-object v0, v0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->f:Lken;

    invoke-static {}, Lbze;->n()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqm;

    iget-object v1, v0, Lcqm;->b:Lcqo;

    iget-object v1, v1, Lcqo;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    sget-object v2, Lhrc;->a:Lhrc;

    invoke-interface {v1, v2}, Lhrd;->j(Lhrc;)V

    iget-object v0, v0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->f:Lken;

    invoke-static {}, Lbze;->l()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    sget-object v1, Lhrc;->a:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->j(Lhrc;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    iget-object v0, v0, Lcqj;->c:Lnph;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_4
    return-void

    :pswitch_11
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqh;

    iget-object v0, v0, Lcqh;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcqf;->a:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcqh;

    iget-object v3, v3, Lcqh;->c:Lccg;

    check-cast v1, Lcqh;

    iget-object v1, v1, Lcqh;->d:Ljava/lang/Runnable;

    invoke-virtual {v3, v1}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v1, Lcqh;

    iget-object v1, v1, Lcqh;->e:Lnph;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :pswitch_12
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    check-cast v0, Lcqa;

    iget-object v0, v0, Lcqa;->y:Lcyq;

    invoke-interface {v0}, Lcyq;->a()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lcqf;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcqh;

    iget-object v1, v1, Lcqh;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    move-object v2, v0

    check-cast v2, Lcqh;

    iget-object v2, v2, Lcqh;->c:Lccg;

    check-cast v0, Lcqh;

    iget-object v0, v0, Lcqh;->d:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Lccg;->b(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

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
