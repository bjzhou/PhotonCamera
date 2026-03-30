.class final Lgc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field final synthetic a:Lge;

.field private final b:Landroid/view/MenuItem$OnActionExpandListener;


# direct methods
.method public constructor <init>(Lge;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgc;->a:Lge;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lgc;->b:Landroid/view/MenuItem$OnActionExpandListener;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lgc;->b:Landroid/view/MenuItem$OnActionExpandListener;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget-object v0, p0, Lgc;->a:Lge;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lfo;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lfo;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

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

    :goto_3
    iget-object v0, p0, Lgc;->a:Lge;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lgc;->b:Landroid/view/MenuItem$OnActionExpandListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
