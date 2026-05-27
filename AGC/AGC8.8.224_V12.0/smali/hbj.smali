.class public final Lhbj;
.super Ljava/lang/Object;

# interfaces
.implements Lhbk;


# instance fields
.field public final a:Loiw;

.field public final b:Ljuh;

.field public final c:Lnph;

.field public final d:Llhm;

.field private final e:Loiw;

.field private final f:Loiw;


# direct methods
.method public constructor <init>(Llhm;Loiw;Loiw;Loiw;Ljuh;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbj;->d:Llhm;

    iput-object p2, p0, Lhbj;->a:Loiw;

    iput-object p3, p0, Lhbj;->e:Loiw;

    iput-object p4, p0, Lhbj;->f:Loiw;

    iput-object p5, p0, Lhbj;->b:Ljuh;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lhbj;->c:Lnph;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lhbj;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbf;

    iget-object v1, v0, Lhbf;->a:Lkrf;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lhbf;->f:J

    iget-object v0, p0, Lhbj;->b:Ljuh;

    new-instance v1, Lhbi;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lhbi;-><init>(Lhbj;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bl()Lnou;
    .locals 6

    iget-object v0, p0, Lhbj;->d:Llhm;

    iget v0, v0, Llhm;->a:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lhbj;->a()V

    :pswitch_1
    iget-object v0, p0, Lhbj;->d:Llhm;

    iput-object p0, v0, Llhm;->b:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lhbj;->c:Lnph;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lhbj;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbe;

    invoke-virtual {v0}, Lhbe;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lhbe;->a:Lgzm;

    sget-object v2, Lgzd;->aj:Lgzt;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, v0, Lhbe;->c:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    iget-object v1, v0, Lhbe;->b:Lgzn;

    sget-object v2, Lgzd;->ak:Lgzs;

    invoke-interface {v1, v2}, Lgzn;->d(Lgzb;)V

    iget-object v1, p0, Lhbj;->d:Llhm;

    iput-object p0, v1, Llhm;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lhbe;->a()V

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
