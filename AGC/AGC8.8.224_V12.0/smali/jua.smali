.class public final Ljua;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lenk;I)V
    .locals 0

    iput p2, p0, Ljua;->b:I

    iput-object p1, p0, Ljua;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljyi;I)V
    .locals 0

    iput p2, p0, Ljua;->b:I

    iput-object p1, p0, Ljua;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljzs;I)V
    .locals 0

    iput p2, p0, Ljua;->b:I

    iput-object p1, p0, Ljua;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llaa;I)V
    .locals 0

    iput p2, p0, Ljua;->b:I

    iput-object p1, p0, Ljua;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Ljua;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljua;->a:Ljava/lang/Object;

    invoke-static {p1}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p1

    check-cast v0, Llaa;

    invoke-virtual {v0, p1}, Llaa;->m(Lkzd;)V

    return-void

    :pswitch_0
    const-string v0, "AudioEncoder"

    const-string v1, "Stopping recording due to: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Ljua;->a:Ljava/lang/Object;

    check-cast p1, Ljyi;

    iget-object p1, p1, Ljyi;->n:Ljym;

    sget-object v0, Ljyk;->k:Ljyk;

    invoke-virtual {p1, v0}, Ljym;->a(Ljyk;)V

    return-void

    :pswitch_1
    sget-object v0, Lenm;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "KeplerController"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v1, "Encoder writing failed"

    const/16 v2, 0x65b

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v0, p0, Ljua;->a:Ljava/lang/Object;

    check-cast v0, Lenk;

    iget-object v0, v0, Lenk;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljua;->a:Ljava/lang/Object;

    check-cast v1, Lenk;

    iget-object v1, v1, Lenk;->a:Ljava/lang/Object;

    check-cast v1, Lenl;

    iget-object v1, v1, Lenl;->e:Lnph;

    invoke-virtual {v1, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Ljua;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lenk;

    iget-object v1, v1, Lenk;->c:Ljava/lang/Object;

    check-cast v1, Lenm;

    iget-object v1, v1, Lenm;->i:Ljava/util/Map;

    check-cast p1, Lenk;

    iget-object p1, p1, Lenk;->a:Ljava/lang/Object;

    check-cast p1, Lenl;

    iget-object p1, p1, Lenl;->a:Leea;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ljua;->b:I

    packed-switch v0, :pswitch_data_0

    if-nez p1, :cond_0

    iget-object p1, p0, Ljua;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Function output is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v0

    check-cast p1, Llaa;

    invoke-virtual {p1, v0}, Llaa;->m(Lkzd;)V

    return-void

    :pswitch_0
    return-void

    :pswitch_1
    sget-object p1, Lnbk;->a:Lnbc;

    iget-object p1, p0, Ljua;->a:Ljava/lang/Object;

    check-cast p1, Lenk;

    iget-object v0, p1, Lenk;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Ljua;->a:Ljava/lang/Object;

    check-cast p1, Lenk;

    iget-object p1, p1, Lenk;->a:Ljava/lang/Object;

    check-cast p1, Lenl;

    iget-object p1, p1, Lenl;->e:Lnph;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljua;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lenk;

    iget-object v1, v1, Lenk;->c:Ljava/lang/Object;

    check-cast v1, Lenm;

    iget-object v1, v1, Lenm;->i:Ljava/util/Map;

    check-cast p1, Lenk;

    iget-object p1, p1, Lenk;->a:Ljava/lang/Object;

    check-cast p1, Lenl;

    iget-object p1, p1, Lenl;->a:Leea;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_2
    iget-object v0, p0, Ljua;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljzs;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Ljua;->a:Ljava/lang/Object;

    check-cast v0, Llaa;

    invoke-virtual {v0, p1}, Llaa;->l(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
