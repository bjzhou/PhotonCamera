.class public final synthetic Lccq;
.super Ljava/lang/Object;

# interfaces
.implements Ljzs;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lccr;Lccv;I)V
    .locals 0

    iput p3, p0, Lccq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lccq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lccv;Lccx;I)V
    .locals 0

    iput p3, p0, Lccq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lccq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcjs;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Lccq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lccq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldec;Lddo;I)V
    .locals 0

    iput p3, p0, Lccq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccq;->b:Ljava/lang/Object;

    iput-object p2, p0, Lccq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letp;Ljuf;I)V
    .locals 0

    iput p3, p0, Lccq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lccq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Letp;Loiw;I)V
    .locals 0

    iput p3, p0, Lccq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lccq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgqw;Lgqy;I)V
    .locals 0

    iput p3, p0, Lccq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lccq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhdy;Lhdz;I)V
    .locals 0

    iput p3, p0, Lccq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lccq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhlu;Lhlt;I)V
    .locals 0

    iput p3, p0, Lccq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccq;->b:Ljava/lang/Object;

    iput-object p2, p0, Lccq;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lccq;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccq;->b:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->a:Ljava/lang/Object;

    check-cast p1, Lhlv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lhlu;

    iput-object p1, v0, Lhlu;->b:Lhlv;

    invoke-interface {v1, p1}, Lhlt;->a(Lhlv;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lccq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->b:Ljava/lang/Object;

    check-cast p1, Lhcq;

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v2, p1, Lhcq;->b:Ljuh;

    check-cast v1, Lhdz;

    iget-object v3, v1, Lhdz;->h:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v1, Lhdz;->h:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljuh;

    :cond_0
    iget-object v3, p1, Lhcq;->n:Lnph;

    new-instance v4, Lgwr;

    const/16 v5, 0x8

    invoke-direct {v4, p1, v0, v1, v5}, Lgwr;-><init>(Lhcq;Lhdy;Lhdz;I)V

    invoke-virtual {v3, v4, v2}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lccq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->b:Ljava/lang/Object;

    check-cast p1, Lgxy;

    move-object v2, v0

    check-cast v2, Lgqw;

    iget-wide v2, v2, Lgqw;->e:J

    new-instance v4, Lgqz;

    check-cast v1, Lgqy;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v3, v1, v5}, Lgqz;-><init>(JLgqy;I)V

    check-cast v0, Lgra;

    iget-object v0, v0, Lgra;->c:Lgqp;

    check-cast v0, Lgqh;

    iget-object v0, v0, Lgqh;->k:Lgqn;

    invoke-interface {v0, v4, p1}, Lgqm;->a(Lgqz;Lgxy;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lccq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->b:Ljava/lang/Object;

    check-cast p1, Lceh;

    check-cast v0, Letp;

    iget-object v2, v0, Letp;->Q:Ljuf;

    invoke-virtual {v2}, Ljuf;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcey;

    invoke-interface {p1, v1}, Lceh;->j(Lcey;)V

    iget-object v0, v0, Letp;->Q:Ljuf;

    new-instance v1, Ledg;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Ledg;-><init>(Lceh;I)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lccq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->b:Ljava/lang/Object;

    check-cast p1, Lceh;

    check-cast v1, Ljuf;

    invoke-virtual {v1}, Ljuf;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Letp;

    iget-object v0, v0, Letp;->ap:Lfuz;

    invoke-virtual {v0}, Lklw;->i()Lkll;

    move-result-object v0

    invoke-interface {p1, v0}, Lceh;->d(Lkll;)V

    :cond_2
    return-void

    :pswitch_4
    iget-object v0, p0, Lccq;->b:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast v1, Lddo;

    check-cast v0, Ldec;

    invoke-virtual {v0, v1}, Ldec;->j(Lddo;)V

    :cond_3
    return-void

    :pswitch_5
    iget-object v0, p0, Lccq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->b:Ljava/lang/Object;

    check-cast p1, Lcjv;

    check-cast v0, Lcjs;

    iget-object p1, v0, Lcjs;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lccq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    check-cast v1, Lccv;

    iget-object p1, v1, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->d:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    check-cast v0, Lccr;

    iget-object p1, v0, Lccr;->c:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lmpx;->a:Lmpx;

    invoke-virtual {v0, p1}, Lccr;->d(Lmqp;)V

    iget-object p1, v0, Lccr;->f:Likz;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Likz;->a()Lnou;

    move-result-object p1

    new-instance v1, Lazo;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Lazo;-><init>(Lccr;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {p1, v1, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Lccr;->e()V

    return-void

    :cond_6
    sget-object p1, Lmpx;->a:Lmpx;

    invoke-virtual {v0, p1}, Lccr;->c(Lmqp;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lccq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    check-cast v0, Lccv;

    iget-object p1, v0, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v0, Lccu;->d:Lccu;

    invoke-virtual {p1, v0}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lccu;->b:Lccu;

    invoke-virtual {p1, v0}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Lccx;->i()V

    return-void

    :cond_8
    invoke-interface {v1}, Lccx;->h()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lccq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lccq;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    check-cast v1, Lccv;

    iget-object p1, v1, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->d:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    sget-object v1, Lccu;->b:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    check-cast v0, Lccr;

    iget-object p1, v0, Lccr;->d:Lccx;

    invoke-interface {p1}, Lccx;->i()V

    return-void

    :cond_a
    check-cast v0, Lccr;

    iget-object p1, v0, Lccr;->d:Lccx;

    invoke-interface {p1}, Lccx;->h()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
