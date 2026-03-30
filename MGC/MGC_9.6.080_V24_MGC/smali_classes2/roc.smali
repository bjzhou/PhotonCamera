.class public final synthetic Lroc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lrof;

.field public final synthetic b:Lsuu;

.field public final synthetic c:Lrod;


# direct methods
.method public synthetic constructor <init>(Lrof;Lsuu;Lrod;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lroc;->a:Lrof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Lroc;->b:Lsuu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lroc;->c:Lrod;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lrof;->c:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    iget-object v0, p0, Lroc;->c:Lrod;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lrod;->f(Lsui;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    iget-object p0, p0, Lrof;->c:Lsuu;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lroc;->a:Lrof;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lroc;->b:Lsuu;

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {v1}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Lrod;->f(Lsui;)Z

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    const v0, 0xf

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :catchall_0
    goto/32 :goto_6

    nop

    nop
.end method
