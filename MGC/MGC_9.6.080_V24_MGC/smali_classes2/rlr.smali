.class final Lrlr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lrlt;


# direct methods
.method public constructor <init>(Lrlt;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrlr;->a:Lrlt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    :goto_1
    check-cast p1, Lrls;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrlr;->a:Lrlt;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lrlt;->c:Lrls;

    nop

    nop

    nop

    if-eq v1, p1, :cond_0

    nop

    nop

    iget-object v1, p0, Lrlt;->d:Lrls;

    nop

    nop

    nop

    nop

    nop

    if-ne v1, p1, :cond_1

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x2

    nop

    nop

    invoke-virtual {p0, p1, v1}, Lrlt;->d(Lrls;I)Z

    :cond_1
    monitor-exit v0

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    return p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lrlt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    :goto_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
