.class Lcom/Fc$0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Fc;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Fc;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$help:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/Fc;Landroid/app/AlertDialog;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/Fc$0;->this$0:Lcom/Fc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lcom/Fc$0;->val$dialog:Landroid/app/AlertDialog;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lcom/Fc$0;->val$help:Ljava/lang/Object;

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
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    goto/32 :goto_f

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/32 :goto_e

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lcom/Fc$0;->val$dialog:Landroid/app/AlertDialog;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lcom/Fc$1;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    const-string v1, "OK"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lcom/Fc$0;->val$help:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    check-cast v1, Ljava/lang/CharSequence;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v2, p0}, Lcom/Fc$1;-><init>(Lcom/Fc$0;)V

    .line 53
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
