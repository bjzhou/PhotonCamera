.class public abstract Loap;
.super Lke;
.source "PG"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public c:I

.field public final d:Lkg;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object v0, p0, Loap;->d:Lkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    new-instance v0, Loao;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lke;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Loao;-><init>(Loap;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Loap;->c:I

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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
    return p0

    nop

    nop

    nop
.end method
