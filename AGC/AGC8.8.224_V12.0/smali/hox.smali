.class public final synthetic Lhox;
.super Ljava/lang/Object;

# interfaces
.implements Lhlt;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcpk;I)V
    .locals 0

    iput p2, p0, Lhox;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhox;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhoz;I)V
    .locals 0

    iput p2, p0, Lhox;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhox;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lhlv;)V
    .locals 9

    iget v0, p0, Lhox;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhox;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lhlv;->c()Z

    move-result v2

    move-object v3, v0

    check-cast v3, Lcpk;

    iget-object v4, v3, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v4

    if-nez v2, :cond_1

    :try_start_0
    sget-object v5, Lcpk;->a:Lnak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lhox;->a:Ljava/lang/Object;

    check-cast v0, Lhoz;

    invoke-virtual {v0, p1, v1}, Lhoz;->a(Lhlv;Z)V

    return-void

    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const/16 v6, 0x1bf

    invoke-interface {v5, v6}, Lnah;->G(I)Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const-string v6, "Stopping recording due to low storage. Remaining bytes=%d"

    iget-wide v7, p1, Lhlv;->b:J

    invoke-interface {v5, v6, v7, v8}, Lnah;->q(Ljava/lang/String;J)V

    move-object v5, v0

    check-cast v5, Lcpk;

    iget-object v5, v5, Lcpk;->y:Lcpj;

    sget-object v6, Lcpj;->e:Lcpj;

    if-eq v5, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    :goto_1
    check-cast v0, Lcpk;

    invoke-virtual {v0, v1}, Lcpk;->j(Z)V

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    iget-object v0, v3, Lcpk;->p:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhls;

    invoke-virtual {v0, p1}, Lhls;->e(Lhlv;)V

    iget-object v0, v3, Lcpk;->q:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llij;

    invoke-virtual {v0, p1}, Llij;->e(Lhlv;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
