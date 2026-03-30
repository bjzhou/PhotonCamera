.class final Leo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgh;


# instance fields
.field final synthetic a:Lep;

.field private b:Z


# direct methods
.method public constructor <init>(Lep;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Leo;->a:Lep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Lfx;Z)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Lmb;->c()V

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iget-boolean p2, p0, Leo;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Leo;->b:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x6c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget-object p2, p0, Leo;->a:Lep;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p2, p2, Lep;->c:Lmb;

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

    :goto_8
    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p2, p0, Leo;->a:Lep;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iput-boolean p2, p0, Leo;->b:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iget-object p2, p2, Lep;->a:Landroid/view/Window$Callback;

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

    :goto_f
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b(Lfx;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-object p0, p0, Leo;->a:Lep;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lep;->a:Landroid/view/Window$Callback;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x6c

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
.end method
