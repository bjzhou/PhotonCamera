.class public final Lcxn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lclv;


# instance fields
.field final synthetic a:Lcxv;

.field private b:Lclu;


# direct methods
.method public constructor <init>(Lcxv;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lclt;->a:Lclu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sget p1, Lclu;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcxn;->a:Lcxv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcxn;->b:Lclu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lclu;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, p0}, Lcyv;->a(Landroid/view/View;Lclu;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcyv;->a:Lcyv;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    sget-object p1, Lclt;->a:Lclu;

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcxn;->b:Lclu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lcxn;->a:Lcxv;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget p1, Lclu;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lcxn;->b:Lclu;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
