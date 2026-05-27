.class public final synthetic Ldom;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldoq;I)V
    .locals 0

    iput p2, p0, Ldom;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldom;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lerh;I)V
    .locals 0

    iput p2, p0, Ldom;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldom;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfbq;I)V
    .locals 0

    iput p2, p0, Ldom;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldom;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Line;I)V
    .locals 0

    iput p2, p0, Ldom;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldom;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldom;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldom;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Ldom;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldom;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llmj;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldom;->a:Ljava/lang/Object;

    check-cast v0, Lfix;

    invoke-virtual {v0}, Lfix;->b()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lfix;->b()Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llic;

    invoke-virtual {v1}, Llic;->b()Loiw;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lfix;->b()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llic;

    invoke-virtual {v0}, Llic;->b()Loiw;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loym;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldom;->a:Ljava/lang/Object;

    check-cast v0, Line;

    iget-object v0, v0, Line;->a:Liof;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Ldom;->a:Ljava/lang/Object;

    check-cast v0, Lfbq;

    iget-object v0, v0, Lfbq;->b:Ljpl;

    invoke-interface {v0}, Ljpl;->h()Ljot;

    move-result-object v0

    invoke-static {v0}, Lktf;->b(Ljot;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldom;->a:Ljava/lang/Object;

    invoke-static {}, Ldez;->c()Lkad;

    move-result-object v1

    :try_start_0
    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lefv;->f:Lefv;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lmtf;->b:Lj$/util/stream/Collector;

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lkad;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-interface {v1}, Lkad;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_2
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    throw v0

    :pswitch_4
    iget-object v0, p0, Ldom;->a:Ljava/lang/Object;

    new-instance v1, Lerj;

    invoke-direct {v1, v0}, Lerj;-><init>(Loiw;)V

    return-object v1

    :pswitch_5
    iget-object v0, p0, Ldom;->a:Ljava/lang/Object;

    new-instance v1, Lerg;

    check-cast v0, Lerh;

    invoke-direct {v1, v0}, Lerg;-><init>(Lerh;)V

    return-object v1

    :pswitch_6
    iget-object v0, p0, Ldom;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :pswitch_7
    iget-object v0, p0, Ldom;->a:Ljava/lang/Object;

    check-cast v0, Ldoq;

    invoke-virtual {v0}, Ldoq;->u()Ldox;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
