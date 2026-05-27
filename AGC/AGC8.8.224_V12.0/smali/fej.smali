.class public final synthetic Lfej;
.super Ljava/lang/Object;

# interfaces
.implements Lmqs;


# instance fields
.field public final synthetic a:J

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    iput p3, p0, Lfej;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lfej;->a:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 8

    iget v0, p0, Lfej;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-wide v3, p0, Lfej;->a:J

    check-cast p1, Lkhr;

    invoke-virtual {p1}, Lkhr;->b()Lkeg;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-wide v5, p1, Lkeg;->b:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_5

    return v1

    :pswitch_0
    iget-wide v3, p0, Lfej;->a:J

    check-cast p1, Lkhr;

    invoke-virtual {p1}, Lkhr;->b()Lkeg;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-wide v5, p1, Lkeg;->b:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    iget-wide v3, p0, Lfej;->a:J

    check-cast p1, Lkhr;

    invoke-virtual {p1}, Lkhr;->b()Lkeg;

    move-result-object v0

    invoke-virtual {p1}, Lkhr;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    iget-wide v5, v0, Lkeg;->b:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lkhr;->a()Lkeb;

    move-result-object p1

    if-nez p1, :cond_2

    :try_start_0
    sget-object p1, Lfen;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x870

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "The frame at %d is null!"

    iget-wide v3, v0, Lkeg;->b:J

    invoke-interface {p1, v1, v3, v4}, Lnah;->q(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    invoke-interface {p1}, Lkeb;->close()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_5
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
