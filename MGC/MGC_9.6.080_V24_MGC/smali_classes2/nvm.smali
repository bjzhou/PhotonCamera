.class final Lnvm;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lnvu;


# direct methods
.method public constructor <init>(Lnvu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnvm;->a:Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    :goto_2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p1, p0, Lnvm;->a:Lnvu;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p1, Lnvu;->J:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lnvu;->J:Z

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Lnvu;->av(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object v0, p1, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnvm;->a:Lnvu;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
