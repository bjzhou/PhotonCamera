.class public final Lqkw;
.super Lqkx;
.source "PG"


# instance fields
.field private final b:Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>(Lqkz;Ljava/lang/AutoCloseable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqkw;->b:Ljava/lang/AutoCloseable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lqkx;-><init>(Lqkz;)V

    goto/32 :goto_0

    nop

    nop

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
.method public final d(I)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string v1, "CloseOnStopListener"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    iget-object v0, p0, Lqkw;->b:Ljava/lang/AutoCloseable;

    nop

    nop

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_9
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

    :goto_a
    const v1, 0x1b

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-super {p0, p1}, Lqkx;->d(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_d

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const-string v2, "Exception while trying to close object."

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method
