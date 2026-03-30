.class final Lgqs;
.super Landroid/database/ContentObserver;
.source "PG"


# instance fields
.field final synthetic a:Lgqu;


# direct methods
.method public constructor <init>(Lgqu;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgqs;->a:Lgqu;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, p1}, Lgqp;->d(IZ)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lgqu;->d:Z

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

    :goto_2
    iget-object p0, p0, Lgqu;->a:Lgqp;

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

    :goto_3
    const/4 p1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lgqu;->a:Lgqp;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean p1, p0, Lgqu;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgqs;->a:Lgqu;

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

    :goto_d
    iget-boolean p1, p0, Lgqu;->d:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lgqp;->b()V

    :goto_f
    goto/32 :goto_6

    nop

    nop
.end method
