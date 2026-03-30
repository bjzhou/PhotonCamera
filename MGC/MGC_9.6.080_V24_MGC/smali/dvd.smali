.class public Ldvd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field public final F:Landroid/view/View$AccessibilityDelegate;

.field private final b:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    sput-object v0, Ldvd;->a:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ldvd;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ldvd;->a:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ldvc;

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

    :goto_1
    iput-object p1, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

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

    nop

    :goto_2
    invoke-direct {p1, p0}, Ldvc;-><init>(Ldvd;)V

    goto/32 :goto_5

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ldvd;->F:Landroid/view/View$AccessibilityDelegate;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static R(Landroid/view/View;)Ljava/util/List;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f0b0480

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ljava/util/List;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a(Landroid/view/View;)Ldxe;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Ldxe;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ldxe;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public c(Landroid/view/View;Ldxb;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p2, p2, Ldxb;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

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

    :goto_1
    iget-object p0, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public e(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

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

.method public g(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public h(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public i(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    move p2, v1

    nop

    nop

    :goto_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v3, Ldxa;->Q:Ldxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5
    const-string v2, "null"

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_6
    check-cast p3, Landroid/text/Spanned;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_56

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    const p2, 0x7f0b0481

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const-string p0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p3, p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

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

    :goto_c
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    move-object v4, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Ldvd;->b:Landroid/view/View$AccessibilityDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Ldvd;->R(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_36

    nop

    nop

    :goto_13
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p3, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v3, Ldxa;->P:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_19
    check-cast v3, Ldxa;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p3, :cond_3

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0, p1}, Ldxm;->a(Landroid/view/View;)Z

    move-result v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_12

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_10

    nop

    nop

    :goto_24
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ldvx;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    const-string v6, "Failed to execute command with argument class ViewCommandArgument: "

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_26
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1e

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto/32 :goto_d

    nop

    nop

    :goto_29
    iget-object v2, v3, Ldxa;->P:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eq p2, p0, :cond_6

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move-object p3, p2

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

    :goto_2e
    goto/16 :goto_1

    nop

    nop

    :goto_2f
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_30
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-class v0, Landroid/text/style/ClickableSpan;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_36
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    aget-object p3, v4, p2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_39
    check-cast v4, [Landroid/text/style/ClickableSpan;

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3}, Ldxa;->a()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3d
    move v2, v1

    nop

    nop

    :goto_3e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_40
    if-lt v2, v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez p0, :cond_b

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-lt p2, p3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_47
    instance-of p3, p2, Landroid/text/Spanned;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_4a
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_4b
    check-cast p0, Landroid/text/style/ClickableSpan;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4c
    invoke-interface {p3, v1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4d
    array-length p3, v4

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4f
    goto/32 :goto_23

    nop

    :goto_50
    if-eqz v2, :cond_d

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_1b

    nop

    nop

    :goto_53
    check-cast p2, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_54
    const p0, 0x7f0b0014

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_55
    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v0, v3, Ldxa;->Q:Ldxm;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto :goto_52

    nop

    nop

    :goto_59
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5a
    return v1

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5c
    if-nez p3, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v5, "A11yActionCompat"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-lez v0, :cond_f

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_f
    goto/32 :goto_22

    nop

    :goto_61
    if-eq v5, p2, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_57

    nop

    nop
.end method
