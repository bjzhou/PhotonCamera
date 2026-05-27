.class public final synthetic Lilp;
.super Ljava/lang/Object;

# interfaces
.implements Ljoo;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lilr;I)V
    .locals 0

    iput p2, p0, Lilp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lilp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liqj;I)V
    .locals 0

    iput p2, p0, Lilp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lilp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lilp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lilp;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 6

    iget v0, p0, Lilp;->b:I

    const-string v1, "CBVerifier"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lilp;->a:Ljava/lang/Object;

    sget-boolean v5, Lksu;->a:Z

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p1, v3, v2

    const-string p1, "Fail to register phenotypeflags for %s. %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v0, p0, Lilp;->a:Ljava/lang/Object;

    sget-boolean v5, Lksu;->a:Z

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p1, v3, v2

    const-string p1, "Committing phenotypeflags for %s failed. %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object p1, p0, Lilp;->a:Ljava/lang/Object;

    sget-object v0, Liqj;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Wearable api is not available"

    const/16 v2, 0x1113

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    check-cast p1, Liqj;

    iput-boolean v4, p1, Liqj;->t:Z

    iput-boolean v4, p1, Liqj;->v:Z

    return-void

    :pswitch_2
    iget-object v0, p0, Lilp;->a:Ljava/lang/Object;

    sget-object v1, Lcob;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x16b

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Scheduling training failed for population: %s"

    invoke-interface {p1, v1, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lilp;->a:Ljava/lang/Object;

    sget-object v1, Lilr;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Failed to get app update info"

    const/16 v3, 0x10d7

    invoke-static {v1, v2, v3, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    check-cast v0, Lilr;

    iget-object p1, v0, Lilr;->c:Lilk;

    invoke-interface {p1}, Lilk;->h()V

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
