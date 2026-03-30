.class public final Lbh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leau;


# instance fields
.field final synthetic a:Lbo;


# direct methods
.method public constructor <init>(Lbo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbh;->a:Lbo;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Leaw;Leap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object p1, Leap;->ON_STOP:Leap;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-eq p2, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lbh;->a:Lbo;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lbo;->R:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method
