.class final Llcf;
.super Ljava/lang/Object;

# interfaces
.implements Llcg;


# instance fields
.field final synthetic a:Lnou;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lnou;I)V
    .locals 0

    iput p2, p0, Llcf;->b:I

    iput-object p1, p0, Llcf;->a:Lnou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Llcf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llcf;->a:Lnou;

    invoke-static {v0}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llcg;

    invoke-interface {v0}, Llcg;->a()V

    return-void

    :pswitch_0
    iget-object v0, p0, Llcf;->a:Lnou;

    invoke-static {v0}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 3

    iget v0, p0, Llcf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llcf;->a:Lnou;

    new-instance v1, Lcnr;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcnr;-><init>(I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
