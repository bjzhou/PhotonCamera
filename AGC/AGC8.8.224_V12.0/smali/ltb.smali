.class public final Lltb;
.super Ljava/lang/Object;

# interfaces
.implements Lltc;


# static fields
.field private static final a:Lmwa;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lagr;->g:Lagr;

    const-string v2, "accessibility_focus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->h:Lagr;

    const-string v2, "clear_accessibility_focus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->b:Lagr;

    const-string v2, "clear_focus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->d:Lagr;

    const-string v2, "clear_selection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->e:Lagr;

    const-string v2, "click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->t:Lagr;

    const-string v2, "collapse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->G:Lagr;

    const-string v2, "context_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->o:Lagr;

    const-string v2, "copy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->q:Lagr;

    const-string v2, "cut"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->u:Lagr;

    const-string v2, "dismiss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->s:Lagr;

    const-string v2, "expand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->a:Lagr;

    const-string v2, "focus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->K:Lagr;

    const-string v2, "hide_tooltip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->f:Lagr;

    const-string v2, "long_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->I:Lagr;

    const-string v2, "move_window"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->i:Lagr;

    const-string v2, "next_at_movement_granularity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->k:Lagr;

    const-string v2, "next_html_element"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->D:Lagr;

    const-string v2, "page_down"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->E:Lagr;

    const-string v2, "page_left"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->F:Lagr;

    const-string v2, "page_right"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->C:Lagr;

    const-string v2, "page_up"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->p:Lagr;

    const-string v2, "paste"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->L:Lagr;

    const-string v2, "press_and_hold"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->j:Lagr;

    const-string v2, "previous_at_movement_granularity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->l:Lagr;

    const-string v2, "previous_html_element"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->n:Lagr;

    const-string v2, "scroll_backward"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->A:Lagr;

    const-string v2, "scroll_down"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->m:Lagr;

    const-string v2, "scroll_forward"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->z:Lagr;

    const-string v2, "scroll_left"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->B:Lagr;

    const-string v2, "scroll_right"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->x:Lagr;

    const-string v2, "scroll_to_position"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->y:Lagr;

    const-string v2, "scroll_up"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->c:Lagr;

    const-string v2, "select"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->H:Lagr;

    const-string v2, "set_progress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->r:Lagr;

    const-string v2, "set_selection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->v:Lagr;

    const-string v2, "set_text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->w:Lagr;

    const-string v2, "show_on_screen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lagr;->J:Lagr;

    const-string v2, "show_tooltip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lmwa;->m(Ljava/util/Map;)Lmwa;

    move-result-object v0

    sput-object v0, Lltb;->a:Lmwa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llto;Landroid/view/View;)V
    .locals 9

    invoke-virtual {p2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lagt;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lagt;

    move-result-object v0

    invoke-virtual {v0}, Lagt;->p()Z

    move-result v1

    const-string v2, "accessibility_clickable"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Lagt;->o()Z

    move-result v1

    const-string v2, "checkable"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Lagt;->s()Z

    move-result v1

    const-string v2, "scrollable"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Lagt;->r()Z

    move-result v1

    const-string v2, "password"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Lagt;->q()Z

    move-result v1

    const-string v2, "long_clickable"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Lagt;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScreenReaderFocusable()Z

    move-result v1

    const-string v2, "accessibility_screenReaderFocusable"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Lagt;->b()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "accessibility_className"

    invoke-virtual {p1, v2, v1}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lagt;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lbkb;

    invoke-direct {v3, v1, v2}, Lbkb;-><init>(Ljava/lang/Object;[C)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v1, v3, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v1

    const-string v4, "accessibility_collectionInfo_rowCount"

    invoke-virtual {p1, v4, v1}, Llto;->d(Ljava/lang/CharSequence;I)V

    iget-object v1, v3, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v1

    const-string v4, "accessibility_collectionInfo_columnCount"

    invoke-virtual {p1, v4, v1}, Llto;->d(Ljava/lang/CharSequence;I)V

    iget-object v1, v3, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v1

    const-string v3, "accessibility_collectionInfo_selectionMode"

    invoke-virtual {p1, v3, v1}, Llto;->d(Ljava/lang/CharSequence;I)V

    :cond_1
    iget-object v1, v0, Lagt;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Lbkb;

    invoke-direct {v3, v1, v2}, Lbkb;-><init>(Ljava/lang/Object;[B)V

    move-object v2, v3

    goto :goto_1

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object v1, v2, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v1

    const-string v3, "accessibility_collectionItemInfo_rowIndex"

    invoke-virtual {p1, v3, v1}, Llto;->d(Ljava/lang/CharSequence;I)V

    iget-object v1, v2, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v1

    const-string v3, "accessibility_collectionItemInfo_rowSpan"

    invoke-virtual {p1, v3, v1}, Llto;->d(Ljava/lang/CharSequence;I)V

    iget-object v1, v2, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v1

    const-string v3, "accessibility_collectionItemInfo_columnIndex"

    invoke-virtual {p1, v3, v1}, Llto;->d(Ljava/lang/CharSequence;I)V

    iget-object v1, v2, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v1

    const-string v2, "accessibility_collectionItemInfo_columnSpan"

    invoke-virtual {p1, v2, v1}, Llto;->d(Ljava/lang/CharSequence;I)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {v0}, Lagt;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lagr;

    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accessibility_action_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lagr;->a()I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    sget-object v6, Lltb;->a:Lmwa;

    invoke-virtual {v6, v3}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lagr;->a()I

    move-result v6

    invoke-static {p2, v6}, Lltg;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v6

    :cond_5
    const/4 v8, 0x2

    if-nez v6, :cond_7

    new-array v6, v8, [Ljava/lang/Object;

    if-eq v7, v5, :cond_6

    const-string v5, "unknown"

    goto :goto_4

    :cond_6
    const-string v5, "custom"

    :goto_4
    aput-object v5, v6, v1

    invoke-virtual {v3}, Lagr;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    const-string v5, "%s (%d)"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    invoke-virtual {v3}, Lagr;->b()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_8

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v6, v5, v1

    aput-object v3, v5, v7

    const-string v3, "%s: `%s`"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_8
    invoke-virtual {p1, v4, v6}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    return-void
.end method
