.class public final synthetic Luid;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lugg;


# instance fields
.field public final synthetic a:Luie;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Luie;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Luid;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Luid;->a:Luie;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final ey()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Luid;->b:Ljava/lang/Runnable;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Luid;->a:Luie;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Luie;->a:Landroid/os/Handler;

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

    :goto_4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
