.class public final synthetic Lckt;
.super Ljava/lang/Object;

# interfaces
.implements Lkex;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcfx;I)V
    .locals 0

    iput p2, p0, Lckt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckt;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckv;I)V
    .locals 0

    iput p2, p0, Lckt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckt;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgnm;I)V
    .locals 0

    iput p2, p0, Lckt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckt;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgno;I)V
    .locals 0

    iput p2, p0, Lckt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckt;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkeb;)V
    .locals 7

    iget v0, p0, Lckt;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lckt;->a:Ljava/lang/Object;

    check-cast v0, Lgnm;

    iget-object v2, v0, Lgnm;->e:Ljvb;

    new-array v3, v1, [Lkad;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-instance v5, Ljum;

    const/4 v6, 0x5

    invoke-direct {v5, v3, v6}, Ljum;-><init>([Lkad;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    new-instance v6, Ljva;

    invoke-direct {v6, v2, v5, v3, v4}, Ljva;-><init>(Ljvb;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;I)V

    new-instance v2, Lgps;

    invoke-direct {v2, v0, p1, v1}, Lgps;-><init>(Lgnm;Lkeb;I)V

    invoke-interface {v6, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lckt;->a:Ljava/lang/Object;

    check-cast v0, Lgno;

    invoke-virtual {v0, p1}, Lgno;->b(Lkeb;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lckt;->a:Ljava/lang/Object;

    check-cast v0, Lcfx;

    iget-object v2, v0, Lcfx;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lcfz;

    invoke-direct {v3, v0, p1, v1}, Lcfz;-><init>(Lcfx;Lkeb;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lckt;->a:Ljava/lang/Object;

    check-cast v0, Lckv;

    iget-object v1, v0, Lckv;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcku;

    invoke-direct {v2, v0, p1}, Lcku;-><init>(Lckv;Lkeb;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
