.class final Luw;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lonk;I)V
    .locals 0

    iput p2, p0, Luw;->b:I

    iput-object p1, p0, Luw;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Luz;I)V
    .locals 0

    iput p2, p0, Luw;->b:I

    iput-object p1, p0, Luw;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 3

    iget p2, p0, Luw;->b:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljo;

    instance-of p2, p1, Ltp;

    if-eqz p2, :cond_3

    iget-object p2, p0, Luw;->a:Ljava/lang/Object;

    check-cast p2, Lonk;

    iget-object p2, p2, Lonk;->a:Ljava/lang/Object;

    check-cast p2, Lty;

    check-cast p1, Ltp;

    iget-object p1, p1, Ltp;->a:Ltm;

    iget-object v0, p2, Lty;->b:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljo;

    iget-object p2, p0, Luw;->a:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Luz;

    iget-object v0, v0, Luz;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    move-object v1, p2

    check-cast v1, Luz;

    iget-boolean v1, v1, Luz;->c:Z

    if-nez v1, :cond_0

    check-cast p2, Luz;

    invoke-virtual {p2, p1}, Luz;->c(Ljo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :goto_0
    :try_start_1
    iget v1, p2, Lty;->d:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p2, Lty;->c:Ltm;

    iget-object p1, p2, Lty;->a:Lopu;

    new-instance v1, Ltv;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ltv;-><init>(Lty;Loku;)V

    const/4 p2, 0x3

    invoke-static {p1, v2, v1, p2}, Lone;->j(Lopu;Lola;Lomo;I)Lora;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_3
    instance-of p2, p1, Lto;

    if-nez p2, :cond_4

    instance-of p1, p1, Ltn;

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Luw;->a:Ljava/lang/Object;

    check-cast p1, Lonk;

    iget-object p1, p1, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Lty;

    invoke-virtual {p1}, Lty;->d()V

    :cond_5
    :goto_2
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
