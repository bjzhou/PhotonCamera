.class public final Lhcz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljpn;


# instance fields
.field private a:Ldr;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lowu;Ljov;Landroid/app/Activity;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x17

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iput-object p3, p0, Lhcz;->b:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lgow;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, p2, v1}, Lgow;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized b(Ldr;)Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {}, Lowu;->a()V

    iget-object v0, p0, Lhcz;->a:Ldr;

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lel;->dismiss()V

    :cond_1
    iput-object p1, p0, Lhcz;->a:Ldr;

    nop

    nop

    iget-object v0, p0, Lhcz;->b:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ldr;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop
.end method

.method public final de()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhcz;->a:Ldr;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lel;->dismiss()V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method
