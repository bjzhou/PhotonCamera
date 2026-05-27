.class public final Levb;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final synthetic e:I


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;I)V
    .locals 0

    iput p5, p0, Levb;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Levb;->a:Loiw;

    iput-object p2, p0, Levb;->b:Loiw;

    iput-object p3, p0, Levb;->c:Loiw;

    iput-object p4, p0, Levb;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfux;
    .locals 6

    iget v0, p0, Levb;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Levb;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuv;

    iget-object v2, p0, Levb;->b:Loiw;

    iget-object v3, p0, Levb;->c:Loiw;

    check-cast v3, Ldqo;

    invoke-virtual {v3}, Ldqo;->a()Lmqp;

    move-result-object v3

    iget-object v4, p0, Levb;->d:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldhi;

    sget-object v5, Ldho;->a:Ldhk;

    invoke-interface {v4}, Ldhi;->f()V

    sget-object v5, Ldhq;->a:Ldhk;

    invoke-interface {v4}, Ldhi;->f()V

    check-cast v2, Levp;

    invoke-virtual {v2}, Levp;->a()Lgkr;

    move-result-object v2

    new-instance v4, Llpg;

    invoke-direct {v4, v1}, Llpg;-><init>(Z)V

    sget-object v1, Lika;->m:Lika;

    invoke-interface {v0, v2, v3, v4, v1}, Lfuv;->a(Lgkr;Lmqp;Llpg;Lika;)Lfux;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Levb;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuv;

    iget-object v2, p0, Levb;->b:Loiw;

    iget-object v3, p0, Levb;->c:Loiw;

    check-cast v3, Ldqo;

    invoke-virtual {v3}, Ldqo;->a()Lmqp;

    move-result-object v3

    iget-object v4, p0, Levb;->d:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldhi;

    sget-object v5, Ldho;->a:Ldhk;

    invoke-interface {v4}, Ldhi;->e()V

    check-cast v2, Levp;

    invoke-virtual {v2}, Levp;->a()Lgkr;

    move-result-object v2

    new-instance v4, Llpg;

    invoke-direct {v4, v1}, Llpg;-><init>(Z)V

    sget-object v1, Lika;->g:Lika;

    invoke-interface {v0, v2, v3, v4, v1}, Lfuv;->a(Lgkr;Lmqp;Llpg;Lika;)Lfux;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Levb;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Levb;->a()Lfux;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Levb;->a()Lfux;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
