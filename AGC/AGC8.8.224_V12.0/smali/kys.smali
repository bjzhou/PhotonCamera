.class final Lkys;
.super Ljava/lang/Object;

# interfaces
.implements Lkyt;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkye;I)V
    .locals 0

    iput p2, p0, Lkys;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkys;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkzg;I)V
    .locals 0

    iput p2, p0, Lkys;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkys;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/Executor;Llaa;)V
    .locals 1

    iget v0, p0, Lkys;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lkys;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lkye;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Llaa;->l(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lkys;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lkzg;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lkzc;

    move-result-object p1

    invoke-interface {p1}, Lkzc;->e()Lnou;

    move-result-object p1

    new-instance p2, Ljua;

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Ljua;-><init>(Llaa;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-static {p1, p2, p3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lkys;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkys;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lkys;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
