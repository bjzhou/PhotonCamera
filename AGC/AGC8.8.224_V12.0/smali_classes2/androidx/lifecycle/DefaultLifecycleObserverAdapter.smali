.class public final Landroidx/lifecycle/DefaultLifecycleObserverAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lakt;


# instance fields
.field private final a:Lakl;

.field private final b:Lakt;


# direct methods
.method public constructor <init>(Lakl;Lakt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Lakl;

    iput-object p2, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->b:Lakt;

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 1

    invoke-virtual {p2}, Lakq;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Lakl;

    invoke-interface {v0, p1}, Lakl;->onDestroy(Lakv;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Lakl;

    invoke-interface {v0, p1}, Lakl;->onStop(Lakv;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Lakl;

    invoke-interface {v0, p1}, Lakl;->onPause(Lakv;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Lakl;

    invoke-interface {v0, p1}, Lakl;->onResume(Lakv;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Lakl;

    invoke-interface {v0, p1}, Lakl;->onStart(Lakv;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Lakl;

    invoke-interface {v0, p1}, Lakl;->onCreate(Lakv;)V

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->b:Lakt;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lakt;->a(Lakv;Lakq;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
