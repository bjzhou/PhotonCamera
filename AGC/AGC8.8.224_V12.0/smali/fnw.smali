.class public final Lfnw;
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

    iput p5, p0, Lfnw;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfnw;->a:Loiw;

    iput-object p2, p0, Lfnw;->b:Loiw;

    iput-object p3, p0, Lfnw;->c:Loiw;

    iput-object p4, p0, Lfnw;->d:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;I[B)V
    .locals 0

    iput p5, p0, Lfnw;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfnw;->d:Loiw;

    iput-object p2, p0, Lfnw;->b:Loiw;

    iput-object p3, p0, Lfnw;->a:Loiw;

    iput-object p4, p0, Lfnw;->c:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;I[C)V
    .locals 0

    iput p5, p0, Lfnw;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfnw;->a:Loiw;

    iput-object p2, p0, Lfnw;->c:Loiw;

    iput-object p3, p0, Lfnw;->b:Loiw;

    iput-object p4, p0, Lfnw;->d:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;I[I)V
    .locals 0

    iput p5, p0, Lfnw;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfnw;->a:Loiw;

    iput-object p2, p0, Lfnw;->b:Loiw;

    iput-object p3, p0, Lfnw;->d:Loiw;

    iput-object p4, p0, Lfnw;->c:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;I[S)V
    .locals 0

    iput p5, p0, Lfnw;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfnw;->b:Loiw;

    iput-object p2, p0, Lfnw;->c:Loiw;

    iput-object p3, p0, Lfnw;->d:Loiw;

    iput-object p4, p0, Lfnw;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;)Lfnw;
    .locals 8

    new-instance v7, Lfnw;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lfnw;-><init>(Loiw;Loiw;Loiw;Loiw;I[I)V

    return-object v7
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lfnw;->e:I

    const-string v1, "addSuppressed"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfnw;->a:Loiw;

    iget-object v1, p0, Lfnw;->b:Loiw;

    invoke-static {v1}, Logn;->b(Loiw;)Loiw;

    move-result-object v1

    iget-object v2, p0, Lfnw;->d:Loiw;

    iget-object v3, p0, Lfnw;->c:Loiw;

    check-cast v0, Lfoy;

    invoke-virtual {v0}, Lfoy;->b()Lgxb;

    move-result-object v0

    check-cast v1, Logn;

    invoke-virtual {v1}, Logn;->a()Logd;

    move-result-object v1

    check-cast v2, Lfqh;

    invoke-virtual {v2}, Lfqh;->b()Lfsr;

    move-result-object v2

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfpn;

    invoke-virtual {v0, v1, v2, v3}, Lgxb;->f(Logd;Lfsr;Lfpn;)Lfox;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lfnw;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lell;

    iget-object v1, p0, Lfnw;->c:Loiw;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfnw;->d:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljuh;

    iget-object v3, p0, Lfnw;->a:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljwb;

    new-instance v4, Lfou;

    invoke-direct {v4, v0, v1, v2, v3}, Lfou;-><init>(Lell;Landroid/content/Context;Ljuh;Ljwb;)V

    return-object v4

    :pswitch_1
    iget-object v0, p0, Lfnw;->a:Loiw;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p0, Lfnw;->c:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lgxb;

    iget-object v7, p0, Lfnw;->b:Loiw;

    iget-object v4, p0, Lfnw;->d:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkbc;

    new-instance v11, Lkbb;

    const-string v5, "TimelapseModeModule#provideTimelapseAgent"

    invoke-direct {v11, v4, v5}, Lkbb;-><init>(Lkbc;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lgxb;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lgxb;-><init>(Lgxb;Loiw;[B[B[B)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v11}, Lkbb;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v11}, Lkbb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_2
    const-class v5, Ljava/lang/Throwable;

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v2

    invoke-virtual {v5, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    throw v0

    :pswitch_2
    iget-object v0, p0, Lfnw;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklx;

    iget-object v1, p0, Lfnw;->b:Loiw;

    check-cast v1, Lels;

    invoke-virtual {v1}, Lels;->a()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lfnw;->a:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldna;

    iget-object v3, p0, Lfnw;->c:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldhi;

    new-instance v4, Lgkr;

    invoke-direct {v4, v0, v1, v2, v3}, Lgkr;-><init>(Lklx;Landroid/content/Intent;Ldna;Ldhi;)V

    return-object v4

    :pswitch_3
    iget-object v0, p0, Lfnw;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lgxb;

    iget-object v6, p0, Lfnw;->b:Loiw;

    iget-object v0, p0, Lfnw;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklx;

    iget-object v4, p0, Lfnw;->d:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkbc;

    new-instance v10, Lkbb;

    const-string v7, "SlowMotionModeModule#provideVideoHfrAgent"

    invoke-direct {v10, v4, v7}, Lkbb;-><init>(Lkbc;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v0}, Lklx;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lgxb;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lgxb;-><init>(Lgxb;Loiw;[B[B[B)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_2

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    invoke-virtual {v10}, Lkbb;->close()V

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v10}, Lkbb;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v4

    :try_start_5
    const-class v5, Ljava/lang/Throwable;

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v2

    invoke-virtual {v5, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_3
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
