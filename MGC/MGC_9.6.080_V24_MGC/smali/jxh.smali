.class public final synthetic Ljxh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsui;

.field public final synthetic b:Lsuu;

.field public final synthetic c:Landroid/media/MediaFormat;


# direct methods
.method public synthetic constructor <init>(Lsui;Lsuu;Landroid/media/MediaFormat;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljxh;->c:Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p2, p0, Ljxh;->b:Lsuu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljxh;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Lsui;->isCancelled()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lsuu;->cancel(Z)Z

    goto/32 :goto_8

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Ljxh;->c:Landroid/media/MediaFormat;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    iget-object v1, p0, Ljxh;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljxh;->b:Lsuu;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_12
    invoke-virtual {v0, p0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method
