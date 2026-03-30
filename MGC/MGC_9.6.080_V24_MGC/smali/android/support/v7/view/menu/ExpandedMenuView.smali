.class public final Landroid/support/v7/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lfw;
.implements Lgk;


# static fields
.field private static final a:[I


# instance fields
.field private b:Lfx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1010129

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const v0, 0x10100d4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    sput-object v0, Landroid/support/v7/view/menu/ExpandedMenuView;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    const v1, 0x3

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/view/menu/ExpandedMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1010074

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-static {p1, v1}, Landroid/support/v7/view/menu/ExpandedMenuView;->FKFBEqQZlqtqYmaK(Landroidx/wear/ambient/AmbientDelegate;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Landroid/support/v7/view/menu/ExpandedMenuView;->PyobbDwpMSIcpERy(Landroidx/wear/ambient/AmbientDelegate;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_4
    invoke-static {p0, p2}, Landroid/support/v7/view/menu/ExpandedMenuView;->HNWnhurkWUDMLrwI(Landroid/support/v7/view/menu/ExpandedMenuView;Landroid/graphics/drawable/Drawable;)V

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p2}, Landroid/support/v7/view/menu/ExpandedMenuView;->bUIgavhMTqokykvo(Landroidx/wear/ambient/AmbientDelegate;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p2}, Landroid/support/v7/view/menu/ExpandedMenuView;->gYcXJaBJBABPPIWG(Landroidx/wear/ambient/AmbientDelegate;I)Z

    move-result p3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, v1}, Landroid/support/v7/view/menu/ExpandedMenuView;->uAYvXRBqYzGkuGDy(Landroidx/wear/ambient/AmbientDelegate;I)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Landroid/support/v7/view/menu/ExpandedMenuView;->a:[I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/view/menu/ExpandedMenuView;->TzzGARmmtpfmTWMq(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p2, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, p2}, Landroid/support/v7/view/menu/ExpandedMenuView;->QuPzrdGXFDbHPSPz(Landroid/support/v7/view/menu/ExpandedMenuView;Landroid/graphics/drawable/Drawable;)V

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x11

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0, p0}, Landroid/support/v7/view/menu/ExpandedMenuView;->TBOJdUaXGsYFMwbg(Landroid/support/v7/view/menu/ExpandedMenuView;Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public static FKFBEqQZlqtqYmaK(Landroidx/wear/ambient/AmbientDelegate;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HNWnhurkWUDMLrwI(Landroid/support/v7/view/menu/ExpandedMenuView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

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
.end method

.method public static PyobbDwpMSIcpERy(Landroidx/wear/ambient/AmbientDelegate;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static QuPzrdGXFDbHPSPz(Landroid/support/v7/view/menu/ExpandedMenuView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RHavBOColgwFYcUN(Landroid/widget/ListView;)V
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

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static TBOJdUaXGsYFMwbg(Landroid/support/v7/view/menu/ExpandedMenuView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static TibATRHFesVpdVHA(Landroid/support/v7/view/menu/ExpandedMenuView;)Landroid/widget/ListAdapter;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

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
    return-object v0

    nop

    nop
.end method

.method public static TzzGARmmtpfmTWMq(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static bUIgavhMTqokykvo(Landroidx/wear/ambient/AmbientDelegate;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static dqqQDsnbDEZQcbOS(Landroid/support/v7/view/menu/ExpandedMenuView;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static gYcXJaBJBABPPIWG(Landroidx/wear/ambient/AmbientDelegate;I)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static iIKQmhOJqWGVwDOO(Landroid/widget/ListAdapter;I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static lyTzGmbeQPEDYRgY(Lfx;Landroid/view/MenuItem;I)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lfx;->z(Landroid/view/MenuItem;I)Z

    move-result v0

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
    return v0

    nop

    nop
.end method

.method public static uAYvXRBqYzGkuGDy(Landroidx/wear/ambient/AmbientDelegate;I)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfx;)V
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

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroid/support/v7/view/menu/ExpandedMenuView;->b:Lfx;

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
.end method

.method public final b(Lfz;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v7/view/menu/ExpandedMenuView;->RHavBOColgwFYcUN(Landroid/widget/ListView;)V

    goto/32 :goto_3

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
    invoke-static {p0, v0}, Landroid/support/v7/view/menu/ExpandedMenuView;->dqqQDsnbDEZQcbOS(Landroid/support/v7/view/menu/ExpandedMenuView;Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v7/view/menu/ExpandedMenuView;->TibATRHFesVpdVHA(Landroid/support/v7/view/menu/ExpandedMenuView;)Landroid/widget/ListAdapter;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroid/support/v7/view/menu/ExpandedMenuView;->b:Lfx;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1, p2}, Landroid/support/v7/view/menu/ExpandedMenuView;->lyTzGmbeQPEDYRgY(Lfx;Landroid/view/MenuItem;I)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p3}, Landroid/support/v7/view/menu/ExpandedMenuView;->iIKQmhOJqWGVwDOO(Landroid/widget/ListAdapter;I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lfz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
