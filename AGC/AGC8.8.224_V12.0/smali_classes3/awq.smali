.class public final Lawq;
.super Lonf;

# interfaces
.implements Lomk;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lawq;->b:I

    const-string p1, ""

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lawp;I)V
    .locals 0

    iput p2, p0, Lawq;->b:I

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    iput p2, p0, Lawq;->b:I

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;I)V
    .locals 0

    iput p2, p0, Lawq;->b:I

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lmbj;I)V
    .locals 0

    iput p2, p0, Lawq;->b:I

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lnou;I)V
    .locals 0

    iput p2, p0, Lawq;->b:I

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lojl;I)V
    .locals 0

    iput p2, p0, Lawq;->b:I

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Looz;I)V
    .locals 0

    iput p2, p0, Lawq;->b:I

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Loxv;I)V
    .locals 0

    iput p2, p0, Lawq;->b:I

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lvo;I)V
    .locals 0

    iput p2, p0, Lawq;->b:I

    iput-object p1, p0, Lawq;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lawq;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lawq;->a:Ljava/lang/Object;

    check-cast p1, Loxv;

    invoke-virtual {p1}, Loxv;->a()V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lawq;->a:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of p1, v0, Loje;

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, p0, Lawq;->a:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    instance-of p1, v0, Loje;

    if-ne v3, p1, :cond_1

    goto :goto_3

    :cond_1
    move-object v1, v0

    :goto_3
    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v0, p0, Lawq;->a:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    instance-of v0, p1, Loje;

    if-ne v3, v0, :cond_2

    goto :goto_5

    :cond_2
    move-object v1, p1

    :goto_5
    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iget-object v0, p0, Lawq;->a:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v3

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    instance-of v0, p1, Loje;

    if-ne v3, v0, :cond_3

    goto :goto_7

    :cond_3
    move-object v1, p1

    :goto_7
    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lawq;->a:Ljava/lang/Object;

    invoke-interface {p1, v2}, Lnou;->cancel(Z)Z

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lawq;->a:Ljava/lang/Object;

    sget-object v0, Lojk;->a:Lojk;

    invoke-interface {p1, v0}, Loku;->e(Ljava/lang/Object;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_6
    check-cast p1, Lonv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lawq;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lolp;->r(Ljava/lang/CharSequence;Lonv;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lawq;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    iget-object v0, p0, Lawq;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_4

    const-string p1, "(this Collection)"

    goto :goto_8

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_8
    return-object p1

    :pswitch_9
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lawq;->a:Ljava/lang/Object;

    check-cast p1, Lmbj;

    invoke-virtual {p1, v0, v1}, Lmbj;->a(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lawq;->a:Ljava/lang/Object;

    check-cast p1, Lmbj;

    invoke-virtual {p1, v0, v1}, Lmbj;->a(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lawq;->a:Ljava/lang/Object;

    check-cast p1, Lmbj;

    invoke-virtual {p1, v0, v1}, Lmbj;->a(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lawq;->a:Ljava/lang/Object;

    check-cast p1, Lvo;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lvo;->a(J)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_d
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lawq;->a:Ljava/lang/Object;

    check-cast v0, Lawp;

    invoke-virtual {v0, p1}, Lawp;->b(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
