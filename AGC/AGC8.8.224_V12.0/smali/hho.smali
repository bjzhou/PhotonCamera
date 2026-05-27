.class final Lhho;
.super Linb;


# instance fields
.field final synthetic a:Lhhr;


# direct methods
.method public constructor <init>(Lhhr;)V
    .locals 0

    iput-object p1, p0, Lhho;->a:Lhhr;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Linb;-><init>([B[B)V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    array-length v0, p1

    if-lez v0, :cond_0

    sget-object v0, Lhhr;->a:Lnak;

    :cond_0
    iget-object v0, p0, Lhho;->a:Lhhr;

    iget-object v0, v0, Lhhr;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhia;

    invoke-interface {v1, p1}, Lhia;->a([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lhhr;->a:Lnak;

    iget-object v0, p0, Lhho;->a:Lhhr;

    iget-object v0, v0, Lhhr;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhia;

    invoke-interface {v1}, Lhia;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 3

    sget-object v0, Lhhr;->a:Lnak;

    iget-object v0, p0, Lhho;->a:Lhhr;

    iget-object v0, v0, Lhhr;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhia;

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown fallback reason"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2}, Lhia;->c(I)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
