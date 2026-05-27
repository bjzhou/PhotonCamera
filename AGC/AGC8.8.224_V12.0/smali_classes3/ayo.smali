.class public final Layo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Laea;I)V
    .locals 0

    iput p4, p0, Layo;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Layo;->d:Ljava/lang/Object;

    iput-object p3, p0, Layo;->c:Ljava/lang/Object;

    iput-object p1, p0, Layo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Layc;Lbbx;Lnou;I)V
    .locals 0

    iput p4, p0, Layo;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layo;->b:Ljava/lang/Object;

    iput-object p2, p0, Layo;->c:Ljava/lang/Object;

    iput-object p3, p0, Layo;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lazd;Lbkb;Lek;I[B[B[B)V
    .locals 0

    iput p4, p0, Layo;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layo;->d:Ljava/lang/Object;

    iput-object p2, p0, Layo;->c:Ljava/lang/Object;

    iput-object p3, p0, Layo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkaq;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Layo;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layo;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Layo;->c:Ljava/lang/Object;

    iput-object p2, p0, Layo;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Layo;->a:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Layo;->d:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Layo;->d:Ljava/lang/Object;

    check-cast v0, Lazd;

    iget-object v0, v0, Lazd;->f:Layp;

    iget-object v1, p0, Layo;->c:Ljava/lang/Object;

    check-cast v1, Lbkb;

    invoke-virtual {v0, v1}, Layp;->g(Lbkb;)Z

    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Layo;->d:Ljava/lang/Object;

    check-cast v0, Ladu;

    invoke-virtual {v0}, Ladu;->a()Lkxr;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Layo;->c:Ljava/lang/Object;

    iget-object v2, p0, Layo;->b:Ljava/lang/Object;

    new-instance v3, Lbd;

    const/16 v4, 0xb

    invoke-direct {v3, v1, v0, v4}, Lbd;-><init>(Laea;Ljava/lang/Object;I)V

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Layo;->d:Ljava/lang/Object;

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Layo;->b:Ljava/lang/Object;

    iget-object v2, p0, Layo;->c:Ljava/lang/Object;

    check-cast v2, Lbbx;

    invoke-interface {v1, v2, v0}, Layc;->a(Lbbx;Z)V

    return-void

    :goto_3
    :try_start_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    iget-object v1, p0, Layo;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "SQLite error while recording fatal error"

    invoke-static {v3, v2}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Layo;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
