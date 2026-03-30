.class final Lcyf;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lcym;


# direct methods
.method public constructor <init>(Lcym;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcyf;->a:Lcym;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcyf;->a:Lcym;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    nop

    :goto_3
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

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

    :goto_4
    invoke-virtual {p0}, Lcxv;->getParent()Landroid/view/ViewParent;

    move-result-object v0

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

    :goto_5
    iget-object p0, p0, Lcym;->b:Lcxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop
.end method
