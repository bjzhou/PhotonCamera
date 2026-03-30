.class public final Lduv;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lduv;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/16 p1, 0xa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "fonts-androidx"

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lduv;->a:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method
