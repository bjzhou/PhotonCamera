.class public final Lpac;
.super Ljava/io/IOException;
.source "PG"


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "Unable to create MediaMuxer with file path file descriptor and format "

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    const v0, 0x18

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop
.end method
