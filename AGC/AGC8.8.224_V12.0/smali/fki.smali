.class final Lfki;
.super Ljava/lang/Object;

# interfaces
.implements Lfkm;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lfkf;I)V
    .locals 0

    iput p2, p0, Lfki;->b:I

    iput-object p1, p0, Lfki;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfkj;I)V
    .locals 0

    iput p2, p0, Lfki;->b:I

    iput-object p1, p0, Lfki;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfkd;)V
    .locals 4

    iget v0, p0, Lfki;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfki;->a:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lfki;->a:Ljava/lang/Object;

    check-cast p1, Lfkj;

    invoke-virtual {p1}, Lfkj;->b()V

    return-void

    :goto_0
    :try_start_0
    iget-object v1, p0, Lfki;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lfkf;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lfkf;->d:Z

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    check-cast v1, Lfkf;

    iput-object p1, v1, Lfkf;->e:Lmqp;

    iget-object p1, p0, Lfki;->a:Ljava/lang/Object;

    check-cast p1, Lfkf;

    invoke-virtual {p1}, Lfkf;->c()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(JLfkq;)V
    .locals 4

    iget v0, p0, Lfki;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfki;->a:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lfki;->a:Ljava/lang/Object;

    check-cast p1, Lfkj;

    invoke-virtual {p1}, Lfkj;->b()V

    return-void

    :goto_0
    :try_start_0
    iget-object v1, p0, Lfki;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lfkf;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lfkf;->b:Z

    invoke-static {p3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p3

    check-cast v1, Lfkf;

    iput-object p3, v1, Lfkf;->c:Lmqp;

    iget-object p3, p0, Lfki;->a:Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Lfkf;

    iput-wide p1, v1, Lfkf;->f:J

    check-cast p3, Lfkf;

    invoke-virtual {p3}, Lfkf;->c()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
