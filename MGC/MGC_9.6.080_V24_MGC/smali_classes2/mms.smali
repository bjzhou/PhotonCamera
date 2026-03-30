.class public final synthetic Lmms;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmmt;

.field public final synthetic b:Landroid/os/PowerManager$OnThermalStatusChangedListener;


# direct methods
.method public synthetic constructor <init>(Lmmt;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmms;->a:Lmmt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lmms;->b:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmms;->b:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmms;->a:Lmmt;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, v0, Lmmt;->d:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    sget-object p0, Lmmt;->a:Lsdb;

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    const/16 v1, 0x1191

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const-string v1, "removeThermalStatusListener called, but listener not yet registered."

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    iget-boolean p0, v0, Lmmt;->c:Z

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Listener is neither registered, nor waiting to be registered."

    nop

    invoke-static {p0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    const/4 p0, 0x0

    nop

    iput-boolean p0, v0, Lmmt;->c:Z

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :cond_0
    iget-object v1, v0, Lmmt;->b:Landroid/os/PowerManager;

    nop

    nop

    invoke-virtual {v1, p0}, Landroid/os/PowerManager;->removeThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop
.end method
