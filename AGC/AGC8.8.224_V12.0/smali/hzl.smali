.class public final synthetic Lhzl;
.super Ljava/lang/Object;

# interfaces
.implements Licx;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B)V
    .locals 0

    iput p2, p0, Lhzl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhzo;I)V
    .locals 0

    iput p2, p0, Lhzl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzl;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lhzl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhzl;->a:Ljava/lang/Object;

    check-cast p1, Ldav;

    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->b(Ldav;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhzl;->a:Ljava/lang/Object;

    check-cast p1, Lgyb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgyb;->a:Lgyb;

    invoke-virtual {p1}, Lgyb;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v1, Ljava/lang/AssertionError;

    goto :goto_0

    :pswitch_1
    move-object p1, v0

    check-cast p1, Lhzo;

    invoke-virtual {p1}, Lhzo;->h()V

    monitor-exit v0

    return-void

    :pswitch_2
    move-object p1, v0

    check-cast p1, Lhzo;

    iget-object p1, p1, Lhzo;->f:Lgzn;

    sget-object v1, Lgzd;->at:Lgzr;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Mars selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
